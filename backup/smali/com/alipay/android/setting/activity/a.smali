.class final Lcom/alipay/android/setting/activity/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alipay/android/setting/activity/BaseSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/setting/activity/BaseSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.setting.REQUEST_END"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "result"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    invoke-virtual {v0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    sget v1, Lcom/alipay/android/app/R$drawable;->av:I

    sget v2, Lcom/alipay/android/app/R$string;->Q:I

    invoke-static {v0, v1, v2}, Lcom/alipay/android/setting/widgets/CustomToast;->a(Landroid/app/Activity;II)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    invoke-virtual {v0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    const-string/jumbo v2, "flag"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v5, "code"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    const-string/jumbo v5, "params"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->a(Lorg/json/JSONObject;)V

    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    const-class v6, Lcom/alipay/android/setting/request/RequestService;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v5, "type"

    const/4 v6, 0x6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    invoke-virtual {v5, v2}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v8

    :goto_1
    iget-object v5, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    invoke-virtual {v5}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->dismissProgressDialog()V

    iget-object v5, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    sget v6, Lcom/alipay/android/app/R$drawable;->av:I

    sget v7, Lcom/alipay/android/app/R$string;->Q:I

    invoke-static {v5, v6, v7}, Lcom/alipay/android/setting/widgets/CustomToast;->a(Landroid/app/Activity;II)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v3, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    invoke-virtual {v3}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->finish()V

    :goto_2
    iget-object v3, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    invoke-virtual {v3}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->dismissProgressDialog()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    sget v1, Lcom/alipay/android/app/R$drawable;->av:I

    sget v2, Lcom/alipay/android/app/R$string;->Q:I

    invoke-static {v0, v1, v2}, Lcom/alipay/android/setting/widgets/CustomToast;->a(Landroid/app/Activity;II)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v5, "params"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    if-eqz v2, :cond_8

    :try_start_2
    const-string/jumbo v3, "res_data"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/alipay/android/app/encrypt/TriDes;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "response data:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->i()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string/jumbo v2, "success"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v0

    move-object v2, v3

    goto :goto_2

    :cond_4
    if-nez v0, :cond_7

    const-string/jumbo v0, "msg"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "status"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "force_exit"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    sget v2, Lcom/alipay/android/app/R$drawable;->av:I

    invoke-static {v1, v2, v0}, Lcom/alipay/android/setting/widgets/CustomToast;->a(Landroid/app/Activity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    invoke-virtual {v0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->finish()V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    iget-boolean v1, v1, Lcom/alipay/android/setting/activity/BaseSettingActivity;->b:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/setting/activity/a;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    invoke-virtual {v0, v2, v4}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_1

    :catch_2
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v8

    goto/16 :goto_1

    :catch_3
    move-exception v2

    move-object v8, v2

    move-object v2, v3

    move-object v3, v8

    goto/16 :goto_1

    :cond_8
    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_2
.end method
