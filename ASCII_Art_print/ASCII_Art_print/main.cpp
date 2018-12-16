//
//  main.cpp
//  ASCII_Art_print
//
//  Created by Александр Ноянов on 21/10/2018.
//  Copyright © 2018 MPEI. All rights reserved.
//

#include <iostream>
#include <fstream>

using namespace std;

int main(int argc, const char * argv[]) {
    // insert code here...
    // std::cout << "Hello, World!\n";
    
    //FILE* f = fopen("coke_bottle.txt","rt");
    
    string s;
    
    ifstream inFile;
    
    inFile.open("coke_bottle.txt");
    
    if (!inFile) {
        cerr << "Unable to open file datafile.txt";
        exit(1);   // call system to stop
    }
    
    while(inFile >> s)
    {
        cout << s;
    }
    
    return 0;
}
