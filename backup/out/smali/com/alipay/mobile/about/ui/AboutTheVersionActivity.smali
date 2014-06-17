.class public Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/about/ui/AboutTheVersionActivity$a;
    }
.end annotation


# instance fields
.field a:Lcom/alipay/mobile/commonui/widget/APWebView;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "http://d.alipay.com/version/android.htm?version="

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->V:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->j:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APWebView;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;->a:Lcom/alipay/mobile/commonui/widget/APWebView;

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "."

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;->b:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/about/ui/AboutTheVersionActivity$a;

    invoke-direct {v0, p0, v3}, Lcom/alipay/mobile/about/ui/AboutTheVersionActivity$a;-><init>(Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;B)V

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;->a:Lcom/alipay/mobile/commonui/widget/APWebView;

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/about/ui/AboutTheVersionActivity$a;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;->a:Lcom/alipay/mobile/commonui/widget/APWebView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
