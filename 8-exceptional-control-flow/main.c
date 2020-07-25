#include "ecf.h"

void obtain_proc_id() {
    pid_t pid = getpid();
    pid_t ppid = getppid();
    printf("pid: %d, parent process pid: %d\n", pid, ppid);
}

void fork_proc() {
    pid_t pid;
    int x = 1;
    pid = Fork();
    if (pid == 0) {
        printf("child: x = %d\n", ++x);
        exit(0);
    }
    printf("parent: x = %d\n", --x);
    exit(0);
}

void pgrp() {
    pid_t pgrp = getpgrp();
    printf("the process group ID: %d\n", pgrp);
    sleep(5);
    if (setpgid(0, 13) == -1) printf("set pgid failed\n");
    pgrp = getpgrp();
    printf("the process group ID: %d\n", pgrp);
    sleep(10);
}

void process() { obtain_proc_id(); }

void kill_child() {
    pid_t pid;
    if ((pid = Fork()) == 0) {
        pause();
        printf("controll should never reach here!\n");
        exit(0);
    }
    Kill(pid, SIGKILL);
    exit(0);
}

void sigint_handler(int sig) {
    printf("Caught SIGINT!\n");
    exit(0);
}

void test_sig_handler() {
    if (signal(SIGINT, sigint_handler) == SIG_ERR)
        unix_error("signal handler installation failed");
    pause();
}

void env() {
    char *v = getenv("PWD");
    printf("PWD=%s\n", v);
    char *m_env = "SOME_ENV";
    setenv(m_env, "666", 1);
    v = getenv(m_env);
    printf("%s=%s\n", m_env, v);
    unsetenv(m_env);
    v = getenv(m_env);
    if (v == NULL) printf("%s is unset\n", m_env);
}

void print_arg_env(int argc, char *argv[], char *envp[]) {
    for (int i = 0; i < argc; i++) {
        printf("argv[%d]: %s\n", i, argv[i]);
    }
    while (*envp != NULL) printf("env: %s\n", *(envp++));
}

int main(int argc, char *argv[], char *envp[]) {
    // print_arg_env(argc, argv, envp);
    process();
    // fork_proc();
    // env();
    // pgrp();
    // kill_child();
    test_sig_handler();
    return 0;
}
