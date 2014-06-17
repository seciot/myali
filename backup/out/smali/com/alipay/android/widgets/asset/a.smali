.class final Lcom/alipay/android/widgets/asset/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/a;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/a;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000066"

    const-string/jumbo v2, "20000113"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
