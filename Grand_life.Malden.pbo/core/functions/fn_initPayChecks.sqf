#include "script_macros.hpp"
switch (playerSide) do {
case west:
    {
        switch (FETCH_CONST(life_coplevel)) do {
        case 0:
            {
                life_paycheck = life_paycheck + 0;
            };
        case 1:
            {
                life_paycheck = life_paycheck + 0;
            };
        case 2:
            {
                life_paycheck = life_paycheck + 100;
            };
        case 3:
            {
                life_paycheck = life_paycheck + 200;
            };
        case 4:
            {
                life_paycheck = life_paycheck + 300;
            };
        case 5:
            {
                life_paycheck = life_paycheck + 400;
            };
        case 6:
            {
                life_paycheck = life_paycheck + 500;
            };
        case 7:
            {
                life_paycheck = life_paycheck + 600;
            };
        case 8:
            {
                life_paycheck = life_paycheck + 700;
            };
        case 9:
            {
                life_paycheck = life_paycheck + 800;
            };
        case 10:
            {
                life_paycheck = life_paycheck + 900;
            };
        case 11:
            {
                life_paycheck = life_paycheck + 1000;
            };
        case 12:
            {
                life_paycheck = life_paycheck + 1100;
            };
        case 13:
            {
                life_paycheck = life_paycheck + 1200;
            };
        case 14:
            {
                life_paycheck = life_paycheck + 2000;
            };
        case 15:
            {
                life_paycheck = life_paycheck + 2100;
            };
        case 16:
            {
                life_paycheck = life_paycheck + 2200;
            };
        case 17:
            {
                life_paycheck = life_paycheck + 2300;
            };
        case 18:
            {
                life_paycheck = life_paycheck + 2400;
            };
        case 19:
            {
                life_paycheck = life_paycheck + 2500;
            };
        }; switch (FETCH_CONST(life_donator)) do {
        case 0:
            {
                life_paycheck = life_paycheck + 0;
            };
        case 1:
            {
                life_paycheck = life_paycheck + 200;
            };
        case 2:
            {
                life_paycheck = life_paycheck + 400;
            };
        case 3:
            {
                life_paycheck = life_paycheck + 550;
            };
        };
    };
case independent:
    {
        switch (FETCH_CONST(life_mediclevel)) do {
        case 0:
            {
                life_paycheck = life_paycheck + 0;
            };
        case 1:
            {
                life_paycheck = life_paycheck + 200;
            };
        case 2:
            {
                life_paycheck = life_paycheck + 250;
            };
        case 3:
            {
                life_paycheck = life_paycheck + 300;
            };
        case 4:
            {
                life_paycheck = life_paycheck + 350;
            };
        case 5:
            {
                life_paycheck = life_paycheck + 400;
            };
        case 6:
            {
                life_paycheck = life_paycheck + 450;
            };
        case 7:
            {
                life_paycheck = life_paycheck + 500;
            };
        case 8:
            {
                life_paycheck = life_paycheck + 550;
            };
        case 9:
            {
                life_paycheck = life_paycheck + 600;
            };
        case 10:
            {
                life_paycheck = life_paycheck + 700;
            };
        case 11:
            {
                life_paycheck = life_paycheck + 800;
            };
        }; switch (FETCH_CONST(life_donator)) do {
        case 0:
            {
                life_paycheck = life_paycheck + 0;
            };
        case 1:
            {
                life_paycheck = life_paycheck + 200;
            };
        case 2:
            {
                life_paycheck = life_paycheck + 400;
            };
        case 3:
            {
                life_paycheck = life_paycheck + 550;
            };
        };
    };
case civilian:
    {
        switch (FETCH_CONST(life_donator)) do {
        case 0:
            {
                life_paycheck = life_paycheck + 0;
            };
        case 1:
            {
                life_paycheck = life_paycheck + 200;
            };
        case 2:
            {
                life_paycheck = life_paycheck + 400;
            };
        case 3:
            {
                life_paycheck = life_paycheck + 550;
            };
        };
    };
};