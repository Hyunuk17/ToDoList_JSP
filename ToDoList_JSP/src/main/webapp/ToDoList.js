"use strict";

let all = document.getElementById("ex1-tab-1");
let running = document.getElementById("ex1-tab-2");
let complete = document.getElementById("ex1-tab-3");
all.addEventListener("click", active_toggle);
running.addEventListener("click", active_toggle);
complete.addEventListener("click", active_toggle);

function active_toggle(event) {
  all.classList.remove("active");
  running.classList.remove("active");
  complete.classList.remove("active");
  event.target.classList.toggle("active");
  active_check();
}

let checkboxList = document.querySelectorAll(".todolist");
function active_check() {
  if (running.classList.contains("active")) {
    checkboxList.forEach((c) => {
      c.parentElement.parentElement.style.display = "block";
      if (c.checked) {
        c.parentElement.parentElement.style.display = "none";
      }
    });
  } else if (all.classList.contains("active")) {
    checkboxList.forEach((c) => {
      c.parentElement.parentElement.style.display = "block";
    });
  } else if (complete.classList.contains("active")) {
    checkboxList.forEach((c) => {
      c.parentElement.parentElement.style.display = "block";
      if (!c.checked) {
        c.parentElement.parentElement.style.display = "none";
      }
    });
  }
}
