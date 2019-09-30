//Definirsi due funzioni che uno aspetta 5 secondi e ritorna un numero casuale tra 0 e 1

// Altra che aspetta 2 secondi e ritorna un numero intero tra 0 e 5

// somma i due numeri

async function calc1() {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve(Math.random());
    }, 2000);
  });
}

async function calc2() {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve(Math.random() * (5 - 0) + 0);
    }, 2000);
  });
}

async function main() {
  const res = await calc1();
  const res2 = await calc2();
  console.log(res + res2);
}

main();
