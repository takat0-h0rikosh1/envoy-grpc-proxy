const {HelloRequest} = require('./generated/helloworld/helloworld_pb.js');
const {GreeterClient} = require('./generated/helloworld/helloworld_grpc_web_pb.js');

const client = new GreeterClient('http://localhost:9000', null, null);

const request = new HelloRequest();
request.setName('World');

client.sayHello(request, {}, (err, response) => {
    if (err) {
        console.log(`Unexpected error for sayHello: code = ${err.code}` +
            `, message = "${err.message}"`);
    } else {
        console.log(response.getMessage());
    }
});
