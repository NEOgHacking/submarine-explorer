// this is just an exaple add it to and item or ore

function add_money(amount) {
    global.money += amount;
}

function spend_money(amount) {
    if (global.money >= amount) {
        global.money -= amount;
        return true;
    }
    return false;
}

//usage:

add_money(20);

if (spend_money(50)) {
    // purchase successful
}