.class public Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;
.super Lcom/alipay/mobile/alipassnfcapp/ui/h;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static BIZ_TAG:Ljava/lang/String; = null

.field public static final PHONE_BLACK:Ljava/lang/String; = "phone_black"

.field private static final TAG:Ljava/lang/String; = "AlipassSendSoundViewController"

.field private static final WAVE_ISSETSURPPORT:Ljava/lang/String; = "isSetSurpport"


# instance fields
.field private animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;

.field canvasSector:Lcom/alipay/mobile/alipassnfcapp/ui/g;

.field private firstTime:Z

.field final handlerWave:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private headSetReceiver:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController$HeadSetReceiver;

.field private iTimeoutSeconds:I

.field private inflater:Landroid/view/LayoutInflater;

.field isSupportReceiveSound:Z

.field loopNum:F

.field private loopShowAnimation:I

.field private mCheckPhoneBlackTask:Lcom/alipay/mobile/alipassnfcapp/ui/i;

.field private mIsFreshStart:Z

.field private mSonicWaveNFC:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

.field private mSonicWaveNFCHandler:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

.field private messagePromptText:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private misHeadSetOn:Z

.field private paint:Landroid/graphics/Paint;

.field private rectF:Landroid/graphics/RectF;

.field private settings:Landroid/content/SharedPreferences;

.field stopAnim:Z

.field stopFlag:Z

.field task:Ljava/util/TimerTask;

.field timer:Ljava/util/Timer;

.field private variance:I

.field private wave_Layout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private wave_circle_image_Layout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private wave_image_retry_Layout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private wave_retry_image:Lcom/alipay/mobile/commonui/widget/APImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "CheckPhoneBlack"

    sput-object v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->BIZ_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;-><init>()V

    iput-boolean v2, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->misHeadSetOn:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->firstTime:Z

    iput-boolean v3, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mIsFreshStart:Z

    const/16 v0, 0x3c

    iput v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->iTimeoutSeconds:I

    iput-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->paint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->rectF:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->inflater:Landroid/view/LayoutInflater;

    iput v2, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->variance:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->loopNum:F

    iput-boolean v2, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->stopFlag:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->stopAnim:Z

    iput-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->canvasSector:Lcom/alipay/mobile/alipassnfcapp/ui/g;

    iput-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->timer:Ljava/util/Timer;

    iput-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->task:Ljava/util/TimerTask;

    iput-boolean v3, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->isSupportReceiveSound:Z

    iput v2, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->loopShowAnimation:I

    new-instance v0, Lcom/alipay/mobile/alipassnfcapp/ui/d;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassnfcapp/ui/d;-><init>(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->handlerWave:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/alipassnfcapp/ui/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassnfcapp/ui/f;-><init>(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFCHandler:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->loopShowAnimation:I

    return v0
.end method

.method static synthetic access$008(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->loopShowAnimation:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->loopShowAnimation:I

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/sonicwavenfc/SonicWaveNFC;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFC:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;Lcom/alipay/mobile/commonui/widget/APImageView;)Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->misHeadSetOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->upDateNotice()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_Layout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_circle_image_Layout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->clearMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->rectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$602(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->rectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$700(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->variance:I

    return v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private buttonInit(Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->loopNum:F

    iput-boolean p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->stopFlag:Z

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->deleteAnima()V

    return-void
.end method

.method private checkPhoneBlack()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/mobile/alipassnfcapp/ui/i;

    sget-object v1, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->BIZ_TAG:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v3}, Lcom/alipay/mobile/alipassnfcapp/ui/i;-><init>(Lcom/alipay/mobile/alipassnfcapp/ui/h;Ljava/lang/String;B)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mCheckPhoneBlackTask:Lcom/alipay/mobile/alipassnfcapp/ui/i;

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mCheckPhoneBlackTask:Lcom/alipay/mobile/alipassnfcapp/ui/i;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassnfcapp/ui/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private clearMessage()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->timer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->task:Ljava/util/TimerTask;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->clearAnimation()V

    :cond_2
    return-void
.end method

.method private deleteAnima()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_Layout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_circle_image_Layout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->canvasSector:Lcom/alipay/mobile/alipassnfcapp/ui/g;

    return-void
.end method

.method private getPhoneBlackListService()Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackList;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackList;

    return-object v0
.end method

.method private getWaveSendCode()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;->getAppBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "wave_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u52a0\u5bc6\u524d\u7684code=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u52a0\u5bc6\u540e\u7684code=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->registerHeadsetPlugReceiver()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v0

    const-string/jumbo v1, "phone_black"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->settings:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->settings:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "isSetSurpport"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->checkPhoneBlack()V

    :cond_0
    return-void
.end method

.method private initWave()V
    .locals 5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xfd

    const/16 v3, 0x95

    const/16 v4, 0x24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->inflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eqz v1, :cond_0

    const/16 v1, 0x21c

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v1, v2, :cond_0

    const/16 v1, 0x17

    iput v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->variance:I

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5c4f\u5e55\u5206\u8fa8\u7387\u4e3a:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :cond_0
    const/16 v1, 0x1e

    iput v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->variance:I

    goto :goto_0
.end method

.method private loadAllVariables()V
    .locals 2

    sget v0, Lcom/alipay/mobile/alipassnfcapp/c;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/alipassnfcapp/e;->c:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    sget v0, Lcom/alipay/mobile/alipassnfcapp/c;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_Layout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/alipassnfcapp/c;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_circle_image_Layout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/alipassnfcapp/c;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/alipassnfcapp/c;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_retry_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_retry_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/alipassnfcapp/c;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_image_retry_Layout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/alipassnfcapp/c;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->messagePromptText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFC:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFC:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->initSonicWaveNFC(Landroid/content/Context;)V

    return-void
.end method

.method private showWave()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->task:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->task:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->timer:Ljava/util/Timer;

    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->timer:Ljava/util/Timer;

    new-instance v0, Lcom/alipay/mobile/alipassnfcapp/ui/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassnfcapp/ui/c;-><init>(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->task:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->task:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private startVerify()V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->isHeadsetOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getWaveSendCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->sendSoundWave(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private upDateNotice()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->isHeadsetOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wavePause()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->messagePromptText:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/alipassnfcapp/e;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_retry_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->messagePromptText:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/alipassnfcapp/e;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_retry_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->BIZ_TAG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getPhoneBlackListService()Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/alipassnfcapp/ui/e;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/alipassnfcapp/ui/e;-><init>(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackList;->queryPhoneBlackList(Landroid/content/Context;Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackListCallBack;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->isSupportReceiveSound:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->doInBackground(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isHeadsetOn(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->misHeadSetOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->firstTime:Z

    if-nez v0, :cond_1

    :try_start_1
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->misHeadSetOn:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->firstTime:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->misHeadSetOn:Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/alipassnfcapp/c;->e:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wavePause()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_Layout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->removeAllViews()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/alipassnfcapp/c;->g:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->retry()V

    goto :goto_0
.end method

.method protected onCreate()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onCreate()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassnfcapp/d;->a:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mView:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->loadAllVariables()V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->init()V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->initWave()V

    invoke-direct {p0, v2}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->buttonInit(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->unRegisterHeadsetPlugReceiver()V

    invoke-super {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFC:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFC:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->stopSendData()V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFC:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFC:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->stopSendData()V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->clearMessage()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mIsFreshStart:Z

    invoke-super {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onPause()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->BIZ_TAG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "isSetSurpport"

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onPostExecute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onResume()V

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mIsFreshStart:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->startVerify()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wavePause()V

    goto :goto_0
.end method

.method public registerHeadsetPlugReceiver()V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->unRegisterHeadsetPlugReceiver()V

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->headSetReceiver:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController$HeadSetReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController$HeadSetReceiver;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController$HeadSetReceiver;-><init>(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)V

    iput-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->headSetReceiver:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController$HeadSetReceiver;

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->headSetReceiver:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController$HeadSetReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected retry()V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->isHeadsetOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->waveStart()V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getWaveSendCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->sendSoundWave(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected sendSoundWave(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFC:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v1

    const-string/jumbo v2, "SendingData.wav"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->setBkSoundWave4MixFromAsset(Landroid/content/Context;Ljava/lang/String;)Z

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFC:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    iget v2, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->iTimeoutSeconds:I

    const/4 v3, 0x2

    const/16 v4, 0x3c

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFCHandler:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->startSendData(Ljava/lang/String;IIILandroid/content/Context;Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;)Z

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->showWave()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unRegisterHeadsetPlugReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->headSetReceiver:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController$HeadSetReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->headSetReceiver:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController$HeadSetReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->headSetReceiver:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController$HeadSetReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected wavePause()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->buttonInit(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->messagePromptText:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/alipassnfcapp/e;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_image_retry_Layout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_retry_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->messagePromptText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFC:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFC:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->stopSendData()V

    :cond_0
    return-void
.end method

.method protected waveStart()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->buttonInit(Z)V

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->stopAnim:Z

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_image_retry_Layout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->messagePromptText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_retry_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->animImgView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
