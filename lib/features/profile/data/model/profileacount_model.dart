class ProfileAccount {
  final String headerTitle;
  final String headerValue;
  final String balanceTitle;
  final String balanceValue;
  final String branchTitle;
  final String branchValue;

  ProfileAccount({
    required this.headerTitle,
    required this.headerValue,
    required this.balanceTitle,
    required this.balanceValue,
    required this.branchTitle,
    required this.branchValue,
  });
  static List<ProfileAccount> getProfileAccount() {
    return [
      ProfileAccount(
        headerTitle: 'Account number',
        headerValue: '564659874654',
        balanceTitle: 'Balance',
        balanceValue: '20,000',
        branchTitle: 'Branch',
        branchValue: 'NewYork',
      ),
      ProfileAccount(
        headerTitle: 'Account number',
        headerValue: '564654654',
        balanceTitle: 'Balance',
        balanceValue: '30,000',
        branchTitle: 'Branch',
        branchValue: 'NewYork',
      ),
      ProfileAccount(
        headerTitle: 'Account number',
        headerValue: '564655354',
        balanceTitle: 'Balance',
        balanceValue: '40,000',
        branchTitle: 'Branch',
        branchValue: 'NewYork',
      ),
    ];
  }
}
