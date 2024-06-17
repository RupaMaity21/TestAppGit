const test_a_businesspartner_logic = require('./code/test-a_businesspartner-logic');
const cds = require('@sap/cds/lib');
const {
  GET,
  POST,
  PATCH,
  DELETE,
  expect
} = cds.test(__dirname + '../../', '--with-mocks');
cds.env.requires.auth = {
  kind: "dummy"
};
describe('Service Testing', () => {
  it('test a_businesspartner-logic', async () => {
    await test_a_businesspartner_logic(GET, POST, PATCH, DELETE, expect);
  });
});