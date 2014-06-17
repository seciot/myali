.class Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/framework/app/MicroApplication;

.field final synthetic this$1:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1$1;->this$1:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;

    iput-object p2, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1$1;->a:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1$1;->a:Lcom/alipay/mobile/framework/app/MicroApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    return-void
.end method
