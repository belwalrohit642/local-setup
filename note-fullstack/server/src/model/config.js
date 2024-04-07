module.exports = {
    database: {
	name: process.env.DATABASE_NAME,
        user: process.env.DATABASE_USER,
        password: process.env.DATABASE_PASSWORD,
        host: process.env.DATABASE_HOST,
        dialect: process.env.APP_ENV === 'test' ? 'sqlite' : 'mysql',
        dialectOptions : process.env.APP_ENV === 'test' ? {} : {
            useUTC:false,
            dateStrings: true,
            typeCast: true,
        },
        timezone : process.env.APP_ENV === 'test' ? '+00:00' : '+01:00',
    },
};
