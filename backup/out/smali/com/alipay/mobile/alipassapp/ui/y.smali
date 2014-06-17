.class final Lcom/alipay/mobile/alipassapp/ui/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/y;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/y;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;)V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/y;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->d(Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/y;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;->c(Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method
