import '../database.dart';

class AdminsTable extends SupabaseTable<AdminsRow> {
  @override
  String get tableName => 'admins';

  @override
  AdminsRow createRow(Map<String, dynamic> data) => AdminsRow(data);
}

class AdminsRow extends SupabaseDataRow {
  AdminsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdminsTable();

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get encryptedPassword => getField<String>('encrypted_password')!;
  set encryptedPassword(String value) =>
      setField<String>('encrypted_password', value);

  String? get resetPasswordToken => getField<String>('reset_password_token');
  set resetPasswordToken(String? value) =>
      setField<String>('reset_password_token', value);

  DateTime? get resetPasswordSentAt =>
      getField<DateTime>('reset_password_sent_at');
  set resetPasswordSentAt(DateTime? value) =>
      setField<DateTime>('reset_password_sent_at', value);

  DateTime? get rememberCreatedAt => getField<DateTime>('remember_created_at');
  set rememberCreatedAt(DateTime? value) =>
      setField<DateTime>('remember_created_at', value);

  int get signInCount => getField<int>('sign_in_count')!;
  set signInCount(int value) => setField<int>('sign_in_count', value);

  DateTime? get currentSignInAt => getField<DateTime>('current_sign_in_at');
  set currentSignInAt(DateTime? value) =>
      setField<DateTime>('current_sign_in_at', value);

  DateTime? get lastSignInAt => getField<DateTime>('last_sign_in_at');
  set lastSignInAt(DateTime? value) =>
      setField<DateTime>('last_sign_in_at', value);

  String? get currentSignInIp => getField<String>('current_sign_in_ip');
  set currentSignInIp(String? value) =>
      setField<String>('current_sign_in_ip', value);

  String? get lastSignInIp => getField<String>('last_sign_in_ip');
  set lastSignInIp(String? value) => setField<String>('last_sign_in_ip', value);

  bool? get deleted => getField<bool>('deleted');
  set deleted(bool? value) => setField<bool>('deleted', value);

  bool? get owner => getField<bool>('owner');
  set owner(bool? value) => setField<bool>('owner', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  bool? get approver => getField<bool>('approver');
  set approver(bool? value) => setField<bool>('approver', value);
}
