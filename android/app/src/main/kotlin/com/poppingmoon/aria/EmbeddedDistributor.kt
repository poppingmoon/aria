package com.poppingmoon.aria

import android.content.Context
import org.unifiedpush.android.foss_embedded_fcm_distributor.EmbeddedDistributorReceiver

// This value must be the same as `fcmTokenPrefix` at lib/constant/push.dart.
const val fcmTokenPrefix = "fcmToken:"

class EmbeddedDistributor: EmbeddedDistributorReceiver() {
    override val googleProjectNumber = "674873867538" // This value comes from the google-services.json

    override fun getEndpoint(context: Context, token: String, instance: String): String {
        return "$fcmTokenPrefix$token"
    }
}
