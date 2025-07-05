module.exports = (srv) => {

    srv.on('greetUser', async (req) => {
        const user = req.data.user;
        const { firstName, lastName, age } = user;
//        return `Hello, ${firstName} ${lastName}. You are ${age} years old.`;
        return user;
    });

}