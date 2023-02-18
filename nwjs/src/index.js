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

var mb = new nw.Menu({type:"menubar"});
mb.createMacBuiltin("Hello World");
// append, insert or delete items of `mb` to customize your own menu
// then ...
nw.Window.get().menu = mb;

// Create a tray icon
var tray = new nw.Tray({ icon: 'assets/IconTemplate.png' });

// Give it a menu
var menu = new nw.Menu();
menu.append(new nw.MenuItem({ type: 'checkbox', label: 'box1' }));
tray.menu = menu;