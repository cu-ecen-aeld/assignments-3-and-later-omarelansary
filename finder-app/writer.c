#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>

int main(int argc, char *argv[]) {
    // Check if the correct number of arguments are provided
    if (argc != 3) {
        fprintf(stderr, "Usage: %s <filename> <text>\n", argv[0]);
        syslog(LOG_ERR, "Error: Incorrect number of arguments provided.");
        exit(1);
    }
    // Open the file for writing
    FILE *file = fopen(argv[1], "w+");
    if (file == NULL) {
        fprintf(stderr, "Error: Unable to open file for writing.\n");
        syslog(LOG_ERR, "Error: Unable to open file for writing.");
        exit(1);
    }

    // Write the text to the file
    fputs(argv[2], file);

    // Close the file
    fclose(file);

    // Log the action using syslog with LOG_DEBUG level
    syslog(LOG_DEBUG, "Writing \"%s\" to %s", argv[2], argv[1]);

    // Close syslog connection
    closelog();

    return 0;
}
