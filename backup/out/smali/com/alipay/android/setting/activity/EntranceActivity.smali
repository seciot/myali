.class public Lcom/alipay/android/setting/activity/EntranceActivity;
.super Lcom/alipay/android/setting/activity/BaseSettingActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private d:Lcom/alipay/mobile/commonui/widget/APTableView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Z

.field private h:[Ljava/lang/String;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->j:Z

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v1, Lcom/alipay/android/app/R$string;->T:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/setting/activity/EntranceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    :goto_0
    iput-boolean p1, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->g:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v1, Lcom/alipay/android/app/R$string;->M:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/setting/activity/EntranceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 10

    const/16 v9, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "issimplepwd"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->b:Z

    const-string/jumbo v2, "needpwdfornopwdopen"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->j:Z

    const-string/jumbo v2, "needpwdfornopwdclose"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->k:Z

    const-string/jumbo v2, "session"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->m:Ljava/lang/String;

    const-string/jumbo v2, "switches"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v0, "code"

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "on"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string/jumbo v7, "nopwd"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v6, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->g:Z

    const-string/jumbo v0, "value"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->i:I

    const-string/jumbo v0, "choices"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->h:[Ljava/lang/String;

    move v0, v1

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_0

    iget-object v7, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->h:[Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "shownopwdvalue"

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->n:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    sget v0, Lcom/alipay/android/app/R$drawable;->ax:I

    sget v2, Lcom/alipay/android/app/R$string;->Q:I

    invoke-static {p0, v0, v2}, Lcom/alipay/android/setting/widgets/CustomToast;->a(Landroid/app/Activity;II)V

    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->g:Z

    invoke-direct {p0, v0}, Lcom/alipay/android/setting/activity/EntranceActivity;->a(Z)V

    iget-boolean v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->n:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    const-string/jumbo v0, "value"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->i:I

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/setting/activity/EntranceActivity;->a(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/alipay/android/setting/activity/EntranceActivity;->a(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/app/R$id;->ao:I

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "SPSafePay"

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->f(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->g:Z

    iput-boolean v2, v1, Lcom/alipay/android/setting/request/RequestContainer;->j:Z

    iget v1, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->i:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->i:I

    iput v2, v1, Lcom/alipay/android/setting/request/RequestContainer;->f:I

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-object v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->h:[Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/android/setting/request/RequestContainer;->q:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->b:Z

    iput-boolean v2, v1, Lcom/alipay/android/setting/request/RequestContainer;->m:Z

    iget-object v1, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->j:Z

    iput-boolean v2, v1, Lcom/alipay/android/setting/request/RequestContainer;->n:Z

    iget-object v1, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->k:Z

    iput-boolean v2, v1, Lcom/alipay/android/setting/request/RequestContainer;->o:Z

    iget-object v1, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->l:Z

    iput-boolean v2, v1, Lcom/alipay/android/setting/request/RequestContainer;->p:Z

    iget-object v1, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-object v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->m:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/android/setting/request/RequestContainer;->c:Ljava/lang/String;

    const-string/jumbo v1, "local_data"

    iget-object v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "settingId"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000024"

    invoke-interface {v1, v3, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/app/R$id;->ap:I

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "SPSafePay"

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->i(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-object v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->m:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/android/setting/request/RequestContainer;->c:Ljava/lang/String;

    const-string/jumbo v1, "local_data"

    iget-object v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "settingId"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000024"

    invoke-interface {v1, v3, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/android/app/R$layout;->ah:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/EntranceActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/EntranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v1, v2}, Lcom/alipay/android/setting/activity/EntranceActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/EntranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/EntranceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->u()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/EntranceActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v2, "msp.properties"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/EntranceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/alipay/android/app/pay/GlobalConstant;->loadProperties(Landroid/content/Context;Ljava/io/InputStream;Z)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/EntranceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/pay/GlobalConstant;->convertProperties(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->g()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "extern_token"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "loginId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/alipay/android/setting/request/RequestContainer;

    invoke-direct {v4}, Lcom/alipay/android/setting/request/RequestContainer;-><init>()V

    iput-object v4, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-object v4, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iput-object v0, v4, Lcom/alipay/android/setting/request/RequestContainer;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "app_name=\"alipay\"&extern_token=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\"&logon_id=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"&biz_type=\"setting\"&user_id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/android/setting/request/RequestContainer;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iput-object v1, v0, Lcom/alipay/android/setting/request/RequestContainer;->d:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/android/setting/request/RequestService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "local_data"

    iget-object v2, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/EntranceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget v0, Lcom/alipay/android/app/R$id;->ao:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/android/app/R$id;->aA:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->f:Landroid/widget/TextView;

    sget v0, Lcom/alipay/android/app/R$id;->ap:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/EntranceActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "titleBar:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->aC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "titleBar"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->aC:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",setting_btn_payment_channel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->ap:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "setting_btn_payment_channel"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->ap:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",setting_btn_no_pwd:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->ao:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "setting_btn_no_pwd"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->ao:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",setting_text_tips:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->aA:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "setting_text_tips"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->aA:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->getInstance()Lcom/alipay/trobot/external/DefaultMesssageHandler;

    move-result-object v2

    sget-object v3, Lcom/alipay/test/ui/core/EventObject;->OnResume:Lcom/alipay/test/ui/core/EventObject;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x3

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "SPSafePay"

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->e(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->onStart()V

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/EntranceActivity;->a()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/EntranceActivity;->dismissProgressDialog()V

    invoke-super {p0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->onStop()V

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/EntranceActivity;->b()V

    return-void
.end method
