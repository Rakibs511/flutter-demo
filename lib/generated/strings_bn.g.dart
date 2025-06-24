///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsBn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsBn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.bn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <bn>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsBn _root = this; // ignore: unused_field

	@override 
	TranslationsBn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsBn(meta: meta ?? this.$meta);

	// Translations
	@override String hello({required Object name}) => 'হ্যালো ${name}';
	@override String get save => 'সংরক্ষণ করুন';
	@override late final _TranslationsLoginBn login = _TranslationsLoginBn._(_root);
}

// Path: login
class _TranslationsLoginBn extends TranslationsLoginEn {
	_TranslationsLoginBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get success => 'সফলভাবে লগইন হয়েছে';
	@override String get fail => 'লগইন ব্যর্থ হয়েছে.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsBn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return ({required Object name}) => 'হ্যালো ${name}';
			case 'save': return 'সংরক্ষণ করুন';
			case 'login.success': return 'সফলভাবে লগইন হয়েছে';
			case 'login.fail': return 'লগইন ব্যর্থ হয়েছে.';
			default: return null;
		}
	}
}

