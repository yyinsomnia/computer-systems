int htoi(char s[])
{
    int n = 0;
    int i = 0;
    while (s[i] != '\0' && s[i] != '\n') {
        if (s[i] == '0') {
            if (s[i+1] == 'x' || s[i+1] == 'X')
                            i+=2;
        }
        if (s[i] >= '0' && s[i] <= '9') {
            n = n * 16 + (s[i] - '0');
        } else if (s[i] >= 'a' && s[i] <= 'f') {
            n = n * 16 + (s[i] - 'a') + 10;
        } else if (s[i] >= 'A' && s[i] <= 'F') {
            n = n * 16 + (s[i] - 'A') + 10;
        } else
            return -1;
        ++i;
 
    }
    return n;
}