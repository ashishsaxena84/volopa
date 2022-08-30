import './App.css';
import WalletDashboard from './App/pages/WalletDashboard';
import Login from './App/pages/Login';
import React, { useState, useRef, useEffect } from "react";
function App() {
  const [isLoggedIn, setLogin] = useState();
  const [change, setChange] = useState(false);

  useEffect(() => {
    if (localStorage.getItem("users") !== null) {
      setLogin(true);
    } else {
      setLogin(false);
    }
  }, [change]);

  console.log(isLoggedIn);
	
	
  //const usersss = JSON.parse(localStorage.getItem('users'));

      return (
		isLoggedIn ? <WalletDashboard /> : <Login />
	  );

}

export default App;