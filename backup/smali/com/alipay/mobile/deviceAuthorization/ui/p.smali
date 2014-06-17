.class final Lcom/alipay/mobile/deviceAuthorization/ui/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/p;->b:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/p;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/p;->b:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/p;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onPreLoad(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProgressUpdate(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method
