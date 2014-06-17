.class final Lcom/alipay/mobile/alipassapp/ui/fd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/commonui/widget/APImageView;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/fd;->d:Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/fd;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/fd;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object p4, p0, Lcom/alipay/mobile/alipassapp/ui/fd;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->a()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/fd;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/biz/common/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/fd;->d:Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;)Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->a()Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->a()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/fe;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/alipassapp/ui/fe;-><init>(Lcom/alipay/mobile/alipassapp/ui/fd;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->a()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->a()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
