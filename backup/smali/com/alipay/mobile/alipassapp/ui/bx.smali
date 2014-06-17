.class final Lcom/alipay/mobile/alipassapp/ui/bx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/bx;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bx;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->finish()V

    return-void
.end method
