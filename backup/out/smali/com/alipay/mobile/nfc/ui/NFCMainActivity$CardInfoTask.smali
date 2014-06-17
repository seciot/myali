.class Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

.field private b:J


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;-><init>(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V

    return-void
.end method

.method private varargs a([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 6

    const-wide/16 v4, 0x3e8

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c()Ljava/lang/String;

    aget-object v2, p1, v1

    :try_start_0
    const-string/jumbo v0, "android.nfc.extra.TAG"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    iget-object v3, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v0}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;Landroid/nfc/tech/IsoDep;)Landroid/nfc/tech/IsoDep;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    iget-object v3, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v3}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/nfc/card/pboc/PbocCard;->a(Landroid/content/Intent;Landroid/content/res/Resources;)Lcom/alipay/nfc/model/CardInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;Lcom/alipay/nfc/model/CardInfo;)Lcom/alipay/nfc/model/CardInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->f()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->b:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :try_start_1
    iget-wide v2, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->b:J

    sub-long/2addr v0, v2

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pboc card load fail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPostExecute - unknownCard:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cardInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Lcom/alipay/nfc/model/CardInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->f(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nfc/app/LogAgent;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->dismissProgressDialog()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->g(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    const-string/jumbo v1, "\u6570\u636e\u8bfb\u53d6\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->showProgressDialog(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->b:J

    return-void
.end method
