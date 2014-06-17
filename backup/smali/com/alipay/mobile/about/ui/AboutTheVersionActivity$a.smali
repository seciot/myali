.class final Lcom/alipay/mobile/about/ui/AboutTheVersionActivity$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/AboutTheVersionActivity$a;->a:Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/about/ui/AboutTheVersionActivity$a;-><init>(Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;)V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
