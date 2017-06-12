import { GfrontendPage } from './app.po';

describe('gfrontend App', () => {
  let page: GfrontendPage;

  beforeEach(() => {
    page = new GfrontendPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('Welcome to app!!');
  });
});
