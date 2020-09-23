import 'package:openid_client/openid_client_browser.dart' as oidc;

class AuthService {
  Future doAuthentication() async {
    try {
      final issuerUri = Uri.parse("https://localhost:5005/");

      final issuer = await oidc.Issuer.discover(issuerUri);
      final client = oidc.Client(issuer, 'recoverweb');
      final auth = new oidc.Authenticator(client);
      auth.authorize();
      // final flow = oidc.Flow.authorizationCode(client);
      // flow.redirectUri = Uri.parse("${issuerUri}authentication/login-callback");
      // final credentials = await flow.callback({});

      // final issuer = await Issuer.discover(issuerUri);
      // final client = Client(issuer, 'recoveryweb');
      //
      // urlLauncher(String url) async {
      //   if (await canLaunch(url)) {
      //     await launch(url, forceWebView: true);
      //   } else {
      //     throw 'cant launch $url';
      //   }
      // }

      // final f = Flow.authorizationCodeWithPKCE(client);
      // f.callback({"okay": "test"});

      // final auth = Authenticator(client, scopes: ['api']);
      // auth.authorize();
      // final c = await f.callback();
// final okay = f.callback(response)
      // final authenticator = Authenticator(
      //   client,
      //   scopes: ['api'],
      // );
      // authenticator.authorize();
      // print(authenticator.flow);

      // await closeWebView();
    } on Exception catch (ex) {
      print(ex);
    }
  }
}
