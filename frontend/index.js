fetch('http://localhost:3000/usuarios')
  .then(res => res.json())
  .then(data => {
    console.log('Dados recebidos:', data);
    // Exibir no HTML
  })
  .catch(err => console.error('Erro:', err));
