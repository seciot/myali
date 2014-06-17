.class final Lcom/alipay/mobile/alipassapp/ui/bh;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/bh;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/bh;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bh;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->b(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)Lcom/alipay/mobile/alipassapp/biz/common/a;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/bh;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    instance-of v1, p1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/bh;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-object v1, v0

    invoke-static {v2, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/bh;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->c(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/bh;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->d(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/bh;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/bh;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->e(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/bh;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;

    const/16 v2, 0x66

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/bh;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_failed:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
