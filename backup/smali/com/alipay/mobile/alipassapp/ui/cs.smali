.class final Lcom/alipay/mobile/alipassapp/ui/cs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/cs;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cs;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_remind_save_fail:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
