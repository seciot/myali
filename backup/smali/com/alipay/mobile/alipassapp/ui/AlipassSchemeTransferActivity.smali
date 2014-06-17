.class public Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;
.super Landroid/app/Activity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private final b:I

.field private c:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->a:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/cz;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/cz;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->a:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "alipays://platformapi/addalipass?appId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "09999987"

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&entry=files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->b()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "hint"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/cy;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/cy;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/cy;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->b()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->finish()V

    return-void
.end method
