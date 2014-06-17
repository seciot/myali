.class final Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;

.field final synthetic c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 877
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 880
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;

    #calls: Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->checkLoginAndAuth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->access$500(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V

    .line 881
    return-void
.end method
