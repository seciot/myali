.class final Lcom/alipay/mobile/alipassapp/ui/ek;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ek;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ek;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
