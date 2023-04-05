import {funcInsideAModule} from './mymodule.js';

function main() {
    document.querySelector('p').innerHTML = funcInsideAModule().toUpperCase();
}

main();