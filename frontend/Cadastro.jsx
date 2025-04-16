import React from 'react';
import './Cadastro.css'; // aqui importa seu CSS
import Swal from 'sweetalert2'; // se quiser usar os modais
import eyeIcon from '../assets/eye-icon.png'; // se estiver usando Vite ou CRA
<img src={eyeIcon} />


export default function Cadastro() {
  return (
    <div id="container" className="account-page">
      <div className="banner">
        <picture>
          <source media="(max-width:750px)" srcSet="/image/logo agrosmart rd1.png" type="image/png" />
          <source media="(max-width:1050px)" srcSet="/image/logo agrosmart rd2.png" type="image/png" />
          <img src="/image/logo agrosmart rd1.png" alt="Logo AGROSMART" style={{ marginLeft: '13.5px' }} />
        </picture>
        <p>
          <strong>Seja bem-vindo! Explore e aproveite todo o nosso conteúdo.</strong>
          <br />Somos uma equipe dedicada a oferecer as melhores informações,
          <br />especialmente pensadas para você, nosso usuário.
        </p>
      </div>

      <div className="box-login">
        <h1>Crie sua conta</h1>
        <div className="box-account">
          <h2>Informe seus dados</h2>
          <input type="text" id="username" placeholder="Apelido" required />
          <input type="email" id="email" placeholder="E-mail" required />

          <div className="password-container">
            <input type="password" id="password" placeholder="Senha" required />
            <span className="toggle-password" id="eyeIcon1">
              <img src="/image/eye-icon.png" alt="Ver senha" />
            </span>
          </div>

          <div className="password-container">
            <input type="password" id="confirmPassword" placeholder="Confirme sua senha" required />
            <span className="toggle-password" id="eyeIcon2">
              <img src="/image/eye-icon.png" alt="Ver senha" />
            </span>
          </div>

          <button type="submit" id="acessarBtn">Criar Conta</button>

          <a href="/adm" className="admin-link">
            <p>Acesso para Administradores</p>
          </a>
        </div>
      </div>
    </div>
  );
}
