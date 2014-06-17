.class final Lcom/alipay/mobile/alipassapp/ui/fa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/commonui/widget/APImageView;

.field final synthetic d:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/fa;->d:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/fa;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/fa;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/alipassapp/ui/fa;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/fa;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/fa;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/fa;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/fb;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/alipassapp/ui/fb;-><init>(Lcom/alipay/mobile/alipassapp/ui/fa;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
