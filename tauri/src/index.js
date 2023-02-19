const dropzone = document.getElementById('drop-zone');
let dragging;

document.querySelectorAll('[draggable]').forEach((element) => {
	element.addEventListener('dragstart', dragStart);
});

dropzone.addEventListener('dragover', (event) => {
	event.preventDefault();
});

dropzone.addEventListener('drop', (event) => {
	console.log(event);

	dropzone.appendChild(dragging);
});

function dragStart(event) {
	dragging = event.target;
}