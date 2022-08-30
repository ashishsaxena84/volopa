import { Button, Card, Col, Form, Input, Row, Typography } from "antd";
import React from "react";
import axios from 'axios';

function Login() {
	const [isLogin, setIsLogin] = React.useState(false);	
	const [email, setEmail] = React.useState("");
  	const [password, setPassword] = React.useState("");

	const handleSubmit = (event) => {
	console.log(email+"---"+password);
    axios.defaults.baseURL = 'https://sad-sanderson.167-235-139-173.plesk.page/api/';
    axios.post('/login', {
      email: email,
      password: password
    })
    .then(({ data }) => {
      if(data.status==="success"){
		localStorage.setItem("users",JSON.stringify(data.content));
		location.reload();
      } else {
        console.log("error")
      }
    });
  }

    return (
		
        <Row className="full-height" align="middle" justify="center">
            <Col xxl={6} xl={9} lg={12} md={12} sm={18} xs={22}>
                <Card>
                    <Card.Grid className="full-width rounded">
                        <Row>
                            <Col span={24}>
                                <Typography.Text className="medium fs-28px dark-green">Login</Typography.Text>
                            </Col>
                        </Row>
                        <Row className="m-t-10">
                            <Col span={24}>
                                <Form
                                    layout="vertical"
                                    requiredMark={false}>
                                    <Form.Item
                                        label={<span className="muli semi-bold">Username</span>}
                                        name='username'
										value={email}
          								onChange={(e) => setEmail(e.target.value)}
                                    >	   
                                        <Input />
                                    </Form.Item>
                                    <Form.Item
                                        label={<span className="muli semi-bold">Password</span>}
                                        name='password'
										value={password}
          								onChange={(e) => setPassword(e.target.value)}	   
											   >
                                        <Input.Password />
                                    </Form.Item>
                                    <Button type="primary" htmlType="submit" className="right-align-text" onClick={handleSubmit}>Login</Button>
                                </Form>
                            </Col>
                        </Row>
                    </Card.Grid>
                </Card>
            </Col>
        </Row>
    );
}
export default Login;