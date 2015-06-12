//
//  main.m
//  chooseYourOwnAdventure
//
//  Created by Jamaal on 6/10/15.
//  Copyright (c) 2015 Jamaal. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //start point
        char yesOrNO;
        printf("Are you ready to become the next Pro Boxing Superstar? Y or N? ");
        scanf("%c", &yesOrNO);
        
        //'N' ends game
        if (yesOrNO == 'N'){
            printf("\nGo back to the amateurs.");
        } else {
          printf("\nI like your spirit, kid! What's your boxing nickname? ");
        }
        
        //choose name
        char name[256];
        fpurge(stdin);
        scanf("%[^\n]", &name);
        printf("\nOkay %s, how many hours do you train daily? ", name);
        
        int hoursTrained;
        scanf("%d", &hoursTrained);
        
        //Hours trained. must respond with int between 8 and 10. over or under game ends
        if (hoursTrained < 2){
            printf("\nYou even serious about boxing? Get outta my gym!");
        } else if (hoursTrained < 8){
            printf("\nAin't enough, kid. Train more then come talk to me.");
        } else if (hoursTrained > 10) {
            printf("\nYou're overtraining kid. Relax.");
        } else if (hoursTrained <= 10) {
            printf("\nGood! Sounds like you're ready for your first match!\n\nChoose your opponent:\n 0)'Soft Gloves' Mickey or 1) Hank 'The Destroyer' ");
        }
        
        //Choose between two Opponents
        int chooseOpponent;
        scanf("%d", &chooseOpponent);
        
        //shows "button" options for punches. choose wrong and game ends
        if (chooseOpponent == 0){
            printf("\nWhat are you a wimp?!");
        } else if (chooseOpponent == 1){
            printf("\nGood! No fear!\n\nRemember %s, listen to your corner or else!\n\nTo Fight: Jab-1 Straight Right-2, Left Hook-3, Duck-4, Money Punch-5\n\nYou ready - 0)Yes or 1)No ? ", name);
        }
        
        //starts the fight
        int choice;
        scanf("%d", &choice);
        
        if (choice == 1){
            printf("\nCROWD BOOS");
        } else {
            printf("\nLET'S GET READY TO RUMBLE!\n\nFirst, establish the jab, kid. ");
        }
        
        //must jab
        int jab;
        scanf("%d", &jab);
        
        if (jab != 1){
            printf("\nHe caught you! KO. You didn't listen, %s,", name);
        } else if (jab == 1){
            printf("\nGood! Follow that up with your straight right!");
        }
        
        //must straight right
        int straightRight;
        scanf("%d", &straightRight);
    
        if (straightRight != 2){
            printf("\nHe caught you! KO. You didn't listen, %s.", name);
        } else if (straightRight == 2){
            printf("\nGreat- watch out for the counter punch! Duck!");
        }
        
        //must duck
        int duck;
        scanf("%d", &duck);
        
        if (duck != 4){
            printf("\nHe caught you! KO. You, didn't listen, %s.", name);
        } else if (duck == 4){
            printf("\nNice. He's off balance - give him a left hook!");
        }
        
        //must throw left hook
        int leftHook;
        scanf("%d", &leftHook);
        
        if (leftHook != 3){
            printf("\nHe caught you! KO. You didn't listen, %s.", name);
        } else if (leftHook == 3){
            printf("\nBam! He's wobbly! Finish him off with the money punch!");
        }
        
        //must hit money punch
        int moneyPunch;
        scanf("%d", &moneyPunch);
        
        if (moneyPunch != 5){
            printf("\nHe caught you! KO. You didn't listen, %s.", name);
        } else if (moneyPunch == 5){
            printf("\nPERFECT PUNCH! KO! AND THE NEW WORLD HEAVYWEIGHT CHAMPION, %s!!!\n\nWho do you want to thank? 1, 2 or 3?", name);
        }
        
        //choose who to thank for your win
        int thank;
        scanf("%d", &thank);
        
        if (thank == 1){
            printf("\nThis one goes to my trainer, Mike K.");
        } else if (thank == 2){
            printf("\nI want to thank Our Lord and Saviour, Jesus Christ!");
        } else if (thank == 3){
            printf("\nYO ADRIEN! I DID IT!");
        } else {
            printf("\nI want to thank Al Haymon");
        }
    }
    return 0;
}
