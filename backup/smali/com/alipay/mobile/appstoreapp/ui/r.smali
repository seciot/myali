.class final Lcom/alipay/mobile/appstoreapp/ui/r;
.super Ljava/lang/Object;
.source "FastLoginAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/q;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/q;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/r;->a:Lcom/alipay/mobile/appstoreapp/ui/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/r;->a:Lcom/alipay/mobile/appstoreapp/ui/q;

    iget-object v0, v0, Lcom/alipay/mobile/appstoreapp/ui/q;->a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->d(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;)Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->getMoreFinish(Z)V

    .line 233
    return-void
.end method
