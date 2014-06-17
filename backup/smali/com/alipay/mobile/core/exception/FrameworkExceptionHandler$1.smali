.class Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private final synthetic b:Lcom/alipay/mobile/framework/app/MicroApplication;

.field final synthetic this$0:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->this$0:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    iput-object p2, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iput-object p3, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->this$0:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    #getter for: Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Landroid/content/Context;
    invoke-static {v3}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->access$0(Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/framework/R$string;->businessStop:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->this$0:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    #getter for: Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Landroid/content/Context;
    invoke-static {v4}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->access$0(Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/framework/R$string;->confirm:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1$1;

    iget-object v5, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-direct {v4, p0, v5}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1$1;-><init>(Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;Lcom/alipay/mobile/framework/app/MicroApplication;)V

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
