import std.stdio;



void main() {
    bool found = false;
    string[] allChatList = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
                      "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
                      "u", "v", "w", "x", "y", "z", "A", "B", "C", "D",
                      "E", "F", "G", "H", "I", "J", "K", "L", "M", "N",
                      "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X",
                      "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
    writeln("Started");
    int i = 0;
    while (!found) {
        generate_str(allChatList, i, "");
        i++;
    }
}


void generate_str(string[] charList, int length, string recstr) {
    if (length == 0) {
        writeln(recstr);
        return;
    }
    for (int c = 0; c < charList.length; c++) {
        generate_str(charList, length-1, recstr ~ charList[cast(uint)c]);
    }
}