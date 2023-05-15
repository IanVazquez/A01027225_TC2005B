// Obtener el elemento HTML donde se mostrará la posición del mouse
const mousePositionElement = document.getElementById('mousePosition');

// Manejador de eventos para obtener la posición del mouse
document.addEventListener('mousemove', (event) => {
  // Obtener la posición del mouse
  const mouseX = event.pageX;
  const mouseY = event.pageY;

  // Actualizar el contenido del elemento HTML con la posición del mouse
  mousePositionElement.textContent = `Posición del mouse: X=${mouseX}, Y=${mouseY}`;
});

// Obtener el botón y el formulario
const submitButton = document.getElementById('form1-submit');
const form = document.getElementById('form1');

// Manejador de evento para el envío del formulario
form.addEventListener('submit', (event) => {
  event.preventDefault(); // Evitar el envío del formulario

  // Obtener los valores de las cajas de texto
  const firstName = document.getElementById('form-fname').value;
  const lastName = document.getElementById('form-lname').value;

  // Crear un elemento para mostrar el nombre completo
  const fullNameElement = document.createElement('p');
  fullNameElement.textContent = `Nombre completo: ${firstName} ${lastName}`;

  // Insertar el elemento después del botón
  submitButton.insertAdjacentElement('afterend', fullNameElement);
});

// Obtener los botones y la tabla
const insertRowButton = document.getElementById('btn-insert-r');
const insertColumnButton = document.getElementById('btn-insert-c');
const sampleTable = document.getElementById('sampleTable');

// Manejador de evento para el botón "Insert row"
insertRowButton.addEventListener('click', () => {
  // Obtener la cantidad de filas en la tabla
  const rowCount = sampleTable.rows.length;

  // Crear una nueva fila
  const newRow = sampleTable.insertRow();

  // Agregar celdas a la fila
  for (let i = 0; i < sampleTable.rows[0].cells.length; i++) {
    const newCell = newRow.insertCell();
    const originalCell = rowCount + 1;
    newCell.textContent = `Row ${originalCell} column ${i + 1}`;
  }
});

// Manejador de evento para el botón "Insert column"
insertColumnButton.addEventListener('click', () => {
  // Recorrer cada fila y agregar una celda al final
  const rows = sampleTable.rows;
  for (let i = 0; i < rows.length; i++) {
    const newCell = rows[i].insertCell();
    const originalCell = i + 1;
    newCell.textContent = `Row ${originalCell} column ${rows[i].cells.length}`;
  }
});

// Obtener los elementos del formulario y la tabla
const rowIndexInput = document.getElementById('rowIndex');
const colIndexInput = document.getElementById('colIndex');
const newValueInput = document.getElementById('newValue');
const changeButton = document.getElementById('btn-change');
const myTable = document.getElementById('myTable');

// Manejador de evento para el botón "Change content"
changeButton.addEventListener('click', () => {
  // Obtener los valores ingresados por el usuario
  const rowIndex = parseInt(rowIndexInput.value) - 1;
  const colIndex = parseInt(colIndexInput.value) - 1;
  const newValue = newValueInput.value;

  // Verificar que los índices sean válidos
  if (isNaN(rowIndex) || isNaN(colIndex) || rowIndex < 0 || colIndex < 0) {
    alert('Por favor, ingresa índices de fila y columna válidos.');
    return;
  }

  // Verificar que la posición de la celda exista en la tabla
  if (rowIndex >= myTable.rows.length || colIndex >= myTable.rows[0].cells.length) {
    alert('La posición especificada está fuera de los límites de la tabla.');
    return;
  }

  // Actualizar el contenido de la celda
  myTable.rows[rowIndex].cells[colIndex].textContent = newValue;
});

// Obtener los elementos del formulario
const colorSelect = document.getElementById('colorSelect');
const addColorButton = document.getElementById('btn-add-color');
const removeColorButton = document.getElementById('btn-rmv-color');

// Manejador de evento para el botón "Add color"
addColorButton.addEventListener('click', () => {
  // Generar un color aleatorio
  const randomColor = generateRandomColor();

  // Crear un nuevo elemento de opción y agregarlo a la lista de opciones
  const newOption = document.createElement('option');
  newOption.textContent = randomColor;
  colorSelect.appendChild(newOption);
});

// Manejador de evento para el botón "Remove color"
removeColorButton.addEventListener('click', () => {
  // Obtener el índice del último elemento de la lista de opciones
  const lastIndex = colorSelect.options.length - 1;

  // Verificar si hay elementos para eliminar
  if (lastIndex >= 0) {
    // Eliminar el último elemento de la lista de opciones
    colorSelect.remove(lastIndex);
  }
});

// Función para generar un color aleatorio
function generateRandomColor() {
  const colors = ['Red', 'Green', 'Blue', 'Yellow', 'Purple', 'Orange'];
  const randomIndex = Math.floor(Math.random() * colors.length);
  return colors[randomIndex];
}

// Obtener la imagen del gato
const imagenGato = document.getElementById('imagenGato');

// Función para generar una imagen aleatoria con tamaño aleatorio
function generarImagenAleatoria() {
  // Generar números aleatorios para el ancho y alto de la imagen
  const randomWidth = getRandomNumber(300, 600);
  const randomHeight = getRandomNumber(300, 600);

  // Crear una nueva imagen con el tamaño aleatorio
  const newImage = new Image();
  newImage.src = `http://placekitten.com/${randomWidth}/${randomHeight}`;

  // Reemplazar la imagen original con la nueva imagen
  imagenGato.src = newImage.src;
}

// Manejador de evento para el evento "mouseover" (mouse entra en la imagen)
imagenGato.addEventListener('mouseover', generarImagenAleatoria);

// Función para generar un número aleatorio entre un rango dado (min y max incluidos)
function getRandomNumber(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}
