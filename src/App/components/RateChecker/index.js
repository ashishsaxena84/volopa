import { Row, Col, Typography, Card, Form, Input, Select, Space, Progress, Button } from 'antd'
import React from "react";
import axios from 'axios';
function RateChecker() {
	/*const [currencyfrom, setCurrencyfrom] = React.useState("");
  	const [currencyto, setCurrencyto] = React.useState("");*/
	const [fromvalue, setFromvalue] = React.useState("");
	const [tovalue, setTovalue] = React.useState("");
	
	const ratesSubmit = (event) => {
		
		axios.defaults.baseURL = 'https://sad-sanderson.167-235-139-173.plesk.page/api/';
		axios.post('/convert', {
		  currency_from: document.getElementById("curfrom").parentElement.nextSibling.textContent,
		  currency_to: document.getElementById("curto").parentElement.nextSibling.textContent,
		  from_value:fromvalue,
		  to_value:tovalue,
		})
		.then(({ data }) => {
		  if(data.status==="success"){
			document.getElementById("fromvalue").value = data.content.from_value
			document.getElementById("tovalue").value = data.content.to_value
			document.getElementById("ratesline").innerText = data.content.from_value+" "+document.getElementById("curfrom").parentElement.nextSibling.textContent+" = "+data.content.to_value+" "+document.getElementById("curto").parentElement.nextSibling.textContent;
		  } else {
			console.log("error")
		  }
		});
	  }
    return (
        <>
            <Row>
                <Col span={24}>
                    <Typography.Text className='dark-green medium fs-25px'>Rate Checker</Typography.Text>
                </Col>
            </Row>
            <Row>
                <Col span={24}>
                    <Card>
                        <Card.Grid className='full-width rounded b-g hover-no-border'>
                            <Form layout='vertical'>
                                <Row>
                                    <Col span={24}>
                                        <Form.Item
                                            name='currencyfrom'
                                            label={<span className='muli semi-bold fs-18px'>Convert From</span>}
                                        >
                                            <Row gutter={8}>
                                                <Col span={6} >
                                                    <Select id="curfrom"
                                                        className='dark-green'
                                                        showSearch
                                                        filterOption={(input, option) => {
                                                            if (option.children)
                                                                return option.children.toLowerCase().includes(input.toLowerCase())
                                                            else if (option.label)
                                                                return option.label.toLowerCase().includes(input.toLowerCase())
                                                        }}
														 >
                                                        <Select.OptGroup label='Common'>
                                                            <Select.Option value="GBP">GBP</Select.Option>
                                                            <Select.Option value="EUR">EUR</Select.Option>
                                                        </Select.OptGroup>
                                                        <Select.OptGroup label='Other'>
                                                            <Select.Option value="USD">USD</Select.Option>
                                                            <Select.Option value="AUD">AUD</Select.Option>
                                                        </Select.OptGroup>
                                                    </Select>
                                                </Col>
                                                <Col span={18}>
                                                    <Input placeholder='Enter Amount' id='fromvalue' name='fromvalue' onChange={(e) => setFromvalue(e.target.value)}/>
                                                </Col>
                                            </Row>
                                        </Form.Item>
                                        <Form.Item
                                            name='currencyto'
                                            label={<span className='muli semi-bold fs-18px'>Convert To</span>}
											onChange={(e) => setCurrencyto(e.target.value)}	   
                                        >
                                            <Row gutter={8}>
                                                <Col span={6}>
                                                    <Select
														id = 'curto'
                                                        className='dark-green'
                                                        showSearch
                                                        filterOption={(input, option) => {
                                                            if (option.children)
                                                                return option.children.toLowerCase().includes(input.toLowerCase())
                                                            else if (option.label)
                                                                return option.label.toLowerCase().includes(input.toLowerCase())
                                                        }}>
                                                        <Select.OptGroup label='Common'>
                                                            <Select.Option value="GBP">GBP</Select.Option>
                                                            <Select.Option value="EUR">EUR</Select.Option>
                                                        </Select.OptGroup>
                                                        <Select.OptGroup label='Other'>
                                                            <Select.Option value="USD">USD</Select.Option>
                                                            <Select.Option value="AUD">AUD</Select.Option>
                                                        </Select.OptGroup>
                                                    </Select>
                                                </Col>
                                                <Col span={18}>
                                                    <Input placeholder='Enter Amount' id='tovalue' name='tovalue' onChange={(e) => setTovalue(e.target.value)}/>
                                                </Col>
                                            </Row>
                                        </Form.Item>
                                    </Col>
                                </Row>
                                <Row align='bottom'>
                                    <Col span={12}>
                                        <Space>
                                            <Progress type='circle' percent={75} width={40} format={() => `30s`} />
                                            <Space direction='vertical' size={0}>
                                                <Typography.Text className='muli semi-bold light-green'>FX Rate</Typography.Text>
                                                <Typography.Text className='muli semi-bold light-green' id = "ratesline" >1 GBP = 1.19 EUR</Typography.Text>
                                            </Space>
                                        </Space>
                                    </Col>
                                    <Col span={12} className='right-align-text'>
                                        <Button type='primary' htmlType='submit' onClick={ratesSubmit}>Convert</Button>
                                    </Col>
                                </Row>
                            </Form>
                        </Card.Grid>
                    </Card>
                </Col>
            </Row>
        </>
    );
}

export default RateChecker;