.class final Lcom/alipay/mobile/alipassapp/ui/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/au;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iput p2, p0, Lcom/alipay/mobile/alipassapp/ui/au;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/au;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/au;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/alipassapp/ui/au;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
