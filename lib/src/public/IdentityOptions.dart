/// Options passed in when calling `Superwall.identify(userId:options:)`.
class IdentityOptions {
  /// Determines whether the SDK should wait to restore paywall assignments from the server
  /// before presenting any paywalls.
  ///
  /// This should only be used in advanced use cases. By setting this to `true`, it prevents
  /// paywalls from showing until after paywall assignments have been restored. If you expect
  /// users of your app to switch accounts or delete/reinstall a lot, you'd set this when users log
  /// in to an existing account.
  final bool restorePaywallAssignments;

  /// Constructor for IdentityOptions.
  ///
  /// [restorePaywallAssignments]: If set to `true`, it waits for paywall assignments to be restored
  /// before showing any paywalls. Defaults to `false`.
  IdentityOptions({this.restorePaywallAssignments = false});
}

extension IdentityOptionsJson on IdentityOptions {
  Map<dynamic, dynamic> toJson() {
    return {
      'restorePaywallAssignments': restorePaywallAssignments,
    };
  }
}