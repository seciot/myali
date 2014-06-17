.class final Lcom/alipay/mobile/alipassapp/ui/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/al;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/al;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/am;->a:Lcom/alipay/mobile/alipassapp/ui/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/am;->a:Lcom/alipay/mobile/alipassapp/ui/al;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/al;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->finish()V

    return-void
.end method
