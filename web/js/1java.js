function primera_letra_repetida(message) {
  let cont, letra;
  let element = "";

  for (let i = 0; i < message.length; i++) {
    element=message.charAt(i);
    cont=0;
    for (let i2 = 0; i2 < message.length; i2++) {
      if (element==message.charAt(i2)) {
        cont++;
      }
      if (cont==2){
        break;
      }
    }
    if (cont==1){
      letra=element;
      break;
    }
  }
  if (cont == 1) {
    return ("la 1ra letra que no se repite es: " + letra);
  } else {
    return "no se encontro ninguna letra que no se repitiera";
  }
}
function bubbleSort(lista) {
  let len = lista.length;
  let controla = false;
  while (!controla) {
    controla = true;
    for (let i = 0; i < len - 1; i++) {
      if (lista[i] > lista[i + 1]) {
        let tmp = lista[i];
        lista[i] = lista[i + 1];
        lista[i + 1] = tmp;
        controla = false;
      }
    }
    len--;
  }
  return lista;
}
function reversaydevuelta(message) {
  function reversa(message) {
    let otromensaje = "";
    for (let i = 0; i < message.length; i++) {
      let i2 = message.length - i - 1;
      otromensaje = otromensaje + message.charAt(i2);
    }
    return otromensaje;
  }

  function devuelta(message) {
    let otromensaje = "";
    for (let i = 0; i < message.length; i++) {
      let i2 = message.length - i - 1;
      otromensaje = otromensaje + message.charAt(i2);
    }
    return otromensaje;
  }

  let revmessage = reversa(message);
  console.log(revmessage);
  let vueltamessage = devuelta(revmessage);
  console.log(vueltamessage);
}
function primermayus(message) {
  let nmessage=""
  for (let i = 0; i < message.length; i++) {
    if (i==0 || (message.charAt((i -1))==" ")) {
      nmessage=nmessage +message[i].toUpperCase()
    } else {
      nmessage=nmessage + message.charAt(i);
    } 
  }
  return nmessage;
}
function mcd(num1, num2) {

  if (num1 === 0) {
    return num2;
  }
  if (num2 === 0) {
    return num1;
  }
  
  while (num2 !== 0) {
    let temp = num2;
    num2 = num1 % num2;
    num1 = temp;
  }
  
  return num1;
}
function Hacker_Speak(message) {

  message=message.replace(/a/g, "4");
  message=message.replace(/s/g, "5");
  message=message.replace(/e/g, "3");
  message=message.replace(/i/g, "1");
  message=message.replace(/o/g, "0");
  return message;
}
function factores(numero) {
  let numero2=[];
  for (let i = 1; i <= numero; i++){
    if ((numero%i) ==0) {
      numero2.push(i);
    } 
  }
  return numero2
}
function norep(numero) {
  const numeros=new Set(numero);
  return numeros;
}
function palabrapeque(message) {
  let cont=0;
  let nlist=[]
  for (let i = 0; i < message.length; i++) {
    if (message.charAt((i))==" ") {
      nlist.push(cont);
      cont=0;
    } else {
      cont++;
    } 
  }
  nlist.push(cont);
  let listaor=bubbleSort(nlist);
  let maspeque=listaor[0];
  return maspeque;
}
function palindromo(message)
{
  let otromensaje="";
  for (let i = 0; i < message.length; i++) {
    let i2 = message.length - i - 1;
    otromensaje = otromensaje + message.charAt(i2);
  }
  if (otromensaje==message) {
    return (message + " si es un palíndromo");
  } else {
    return (message + " no es un palíndromo");
  }
} 
function alfabetic(message) {
  let otromensaje=message.split(" ");
  let ormessage=otromensaje.sort();
  return ormessage;
}
function medmod(numeros) {
  let numor = bubbleSort(numeros);
  let cant = numor.length;
  let mediana;

  if (numeros.length % 2 == 0) {
    mediana = [(numor[cant / 2 - 1] + numor[cant / 2]) / 2];
  } else {
    mediana = [numor[(cant - 1) / 2]];
  }

  let numtemp;
  let moda=[];
  let cont, cont2=0;
  for (let i = 0; i < cant; i++) {
    numtemp=numor[i]
    cont=0;
    for (let i2 = 0; i2 < cant; i2++) {
      if (numtemp==numor[i2]) {
        cont++;
      }
    }
    if (cont>cont2) {
      moda=[numor[i]];
      cont2=cont;
    }
    if (cont==cont2) {
      moda.push(numor[i]);
    }
  }
  let modas=[...new Set (moda)];
  return [mediana, modas];
}
function palfrecuente(message) {
  let otromensaje=message.split(" ");
  let cont=0; 
  let palfre=[];
  let cont2=0;
  for (let i = 0; i < otromensaje.length; i++) {
    for (let i2 = 0; i2 < otromensaje.length; i2++) {
      if (otromensaje[i]==otromensaje[i2]) {
        cont++;
      }
    }
    if (cont>cont2) {
      palfre=[otromensaje[i]];
      cont2=cont;
    }
    if (cont==cont2) {
      palfre.push(otromensaje[i]);
    }
    cont=0;
  }
  let palfres=[new Set (palfre)];
  return palfres;
}
function potenciad2(numero) {
  let cond=true;
  const numero2=numero;
  while (cond=true) {
    if (numero%2!=0) {
      cond=false;
      return (numero2 + " no es una potencia de 2");
    }
    if (numero/2==1) {
      cond=false;
      return (numero2 + " es una potencia de 2");
    }
    numero=numero/2;
  }
}
function bubbleSortrev(lista) {
  let listas=bubbleSort(lista);
  listas=listas.reverse();
  return listas;
}


 let letras="abacddbec";
  console.log (primera_letra_repetida(letras));

  let listaordenada=bubbleSort([0,4,2,4,3,1]);
  console.log (listaordenada);

  let invernor="hola";
  reversaydevuelta(invernor);
  

  let mayus=("hola mundo");
  console.log(primermayus(mayus));

  let nume1, nume2;
  nume1=423;
  nume2=12234;
  console.log( mcd(nume1, nume2));

  let hacker="Javascript es divertido";
  console.log(Hacker_Speak(hacker));

  let num=24;
  console.log(factores(num));

  let numrep=norep([0,4,2,4,3,1,3,6,8,2,1]);
  console.log (numrep);

  let text=("hola como has estas?");
  console.log(palabrapeque(text));

  let palin="radar";
  console.log(palindromo(palin));

  let orden=("hello world");
  console.log(alfabetic(orden));

  let alfa="hace frio y estoy lejos de casa";
  console.log(alfabetic(alfa));

  let medianaymoda=[1,4,8,6,4,8,3,7,9,4,3,1,1,1,1];
  console.log(medmod(medianaymoda));

  let palabras="hola hola hola se me escucha?, como estan?, estan bien?"
  console.log (palfrecuente(palabras));

  let pospot=64
  console.log (potenciad2(pospot));

  let listaordenadades=bubbleSortrev([0,4,2,4,3,1]);
  console.log (listaordenadades);
  