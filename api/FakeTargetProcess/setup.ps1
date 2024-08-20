npm init;
npm install express --save;
npm install babel-cli --save;
npm install babel-preset-es2015 --save;
npm install express-requests-logger --save;

npm install express-basic-auth --save

npm audit fix;

npm install nodemon --save;
npm install body-parser --save;


# To Run
# node_modules/.bin/babel-node app.js
# OR
# npm run start
#
# Add to package.json:
# "start": "nodemon app.js --exec babel-node"