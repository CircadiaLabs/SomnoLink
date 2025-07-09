document.addEventListener('DOMContentLoaded', () => {
  const form = document.getElementById('contact-form');

  form.addEventListener('submit', (e) => {
    e.preventDefault();

    const name = form.name.value.trim();
    const email = form.email.value.trim();
    const message = form.message.value.trim();

    if (!name || !email || !message) {
      alert('Por favor, completa todos los campos.');
      return;
    }

    if (!validateEmail(email)) {
      alert('Por favor, ingresa un correo válido.');
      return;
    }

    console.log(`Mensaje enviado por ${name} (${email}): ${message}`);
    alert('¡Gracias por contactarnos! Tu mensaje ha sido enviado.');

    form.reset();
  });

  function validateEmail(email) {
    const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return regex.test(email);
  }
});
