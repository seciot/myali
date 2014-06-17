.class final Lcom/alipay/mobile/appstoreapp/adapter/a;
.super Ljava/lang/Object;
.source "FastLoginAppAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/adapter/a;->c:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/adapter/a;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput p3, p0, Lcom/alipay/mobile/appstoreapp/adapter/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/a;->c:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/adapter/a;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget v2, p0, Lcom/alipay/mobile/appstoreapp/adapter/a;->b:I

    invoke-static {v0, p1, v1}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->a(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;Landroid/view/View;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 121
    return-void
.end method
