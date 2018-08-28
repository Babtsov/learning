// gcc -pthread looping_threads.c

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/syscall.h>

void* thread_work(void *input) {
  int index = *(int *)input;
    printf("thread %d started... tid: %d pid: %d \n",
           index, syscall(SYS_gettid), syscall(SYS_getpid));
  while(1){}
}

int main(void) {
  pthread_t thread1;
  printf("I am main. tid: %d, pid: %d\n",syscall(SYS_gettid), syscall(SYS_getpid));

  int inputs[4] = {0};
  int i;
  for (i = 0; i < 4; i++) {
    inputs[i] = i + 1;
    if (pthread_create(&thread1, NULL, thread_work, &inputs[i]) != 0) {
      printf("failed to create the thread\n");
      exit(1);
    }
  }
  printf("now, looping forever\n");
  while(1){}
}
