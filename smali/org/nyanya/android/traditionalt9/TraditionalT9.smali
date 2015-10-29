.class public Lorg/nyanya/android/traditionalt9/TraditionalT9;
.super Landroid/inputmethodservice/InputMethodService;
.source "TraditionalT9.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# static fields
.field private static final CAPS_ALL:I = 0x2

.field private static final CAPS_CYCLE:[I

.field private static final CAPS_OFF:I = 0x0

.field private static final CAPS_SINGLE:I = 0x1

.field private static final EDITING:I = 0x1

.field private static final EDITING_NOSHOW:I = 0x2

.field private static final MODE_CYCLE:[I

.field public static final MODE_LANG:I = 0x0

.field public static final MODE_NUM:I = 0x2

.field public static final MODE_TEXT:I = 0x1

.field private static final NON_EDIT:I = 0x0

.field private static final T9DELAY:I = 0x4b0


# instance fields
.field private db:Lorg/nyanya/android/traditionalt9/T9DB;

.field private interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

.field protected mAddingWord:Z

.field private mCandidateView:Lorg/nyanya/android/traditionalt9/CandidateView;

.field private mCapsMode:I

.field private mCharIndex:I

.field private mComposing:Ljava/lang/StringBuilder;

.field private mComposingI:Ljava/lang/StringBuilder;

.field private mDPADkeyEvent:Landroid/view/KeyEvent;

.field private mEditing:I

.field private mFirstPress:Z

.field private mGaveUpdateWarn:Z

.field private mIgnoreDPADKeyUp:Z

.field private mKeyMode:I

.field private mLang:I

.field private mLangIndex:I

.field private mLangsAvailable:[I

.field private mPrevious:I

.field private mPreviousWord:Ljava/lang/String;

.field private mSmileyPopup:Lorg/nyanya/android/traditionalt9/AbsSymDialog;

.field private mSuggestionInts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionSym:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSymbolPopup:Lorg/nyanya/android/traditionalt9/AbsSymDialog;

.field protected mWordFound:Z

.field private modeNotification:Landroid/widget/Toast;

.field mt9release:Ljava/lang/Runnable;

.field private pref:Landroid/content/SharedPreferences;

.field final t9releasehandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 73
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->CAPS_CYCLE:[I

    .line 89
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->MODE_CYCLE:[I

    return-void

    .line 73
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    .line 89
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 32
    iput-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionInts:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionSym:Ljava/util/AbstractList;

    .line 44
    iput v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mEditing:I

    .line 46
    iput-boolean v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mGaveUpdateWarn:Z

    .line 48
    iput-boolean v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mFirstPress:Z

    .line 50
    iput-boolean v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mIgnoreDPADKeyUp:Z

    .line 51
    iput-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mDPADkeyEvent:Landroid/view/KeyEvent;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mWordFound:Z

    .line 55
    iput-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSymbolPopup:Lorg/nyanya/android/traditionalt9/AbsSymDialog;

    .line 56
    iput-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSmileyPopup:Lorg/nyanya/android/traditionalt9/AbsSymDialog;

    .line 57
    iput-boolean v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mAddingWord:Z

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPreviousWord:Ljava/lang/String;

    .line 68
    iput-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangsAvailable:[I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->t9releasehandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lorg/nyanya/android/traditionalt9/TraditionalT9$1;

    invoke-direct {v0, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9$1;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9;)V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mt9release:Ljava/lang/Runnable;

    .line 94
    iput-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotification:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$000(Lorg/nyanya/android/traditionalt9/TraditionalT9;)V
    .locals 0
    .param p0, "x0"    # Lorg/nyanya/android/traditionalt9/TraditionalT9;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitReset()V

    return-void
.end method

.method private charReset()V
    .locals 2

    .prologue
    .line 1284
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->t9releasehandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mt9release:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1285
    const/4 v0, -0x1

    iput v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPrevious:I

    .line 1286
    const/4 v0, 0x0

    iput v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCharIndex:I

    .line 1287
    return-void
.end method

.method private clearState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionInts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionSym:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->clear()V

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPreviousWord:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 181
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mWordFound:Z

    .line 183
    return-void
.end method

.method private commitReset()V
    .locals 2

    .prologue
    .line 1273
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 1274
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->charReset()V

    .line 1275
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1276
    const/4 v0, 0x0

    iput v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    .line 1279
    :cond_0
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1281
    return-void
.end method

.method private commitTyped()V
    .locals 1

    .prologue
    .line 805
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 806
    return-void
.end method

.method private commitTyped(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v1, 0x0

    .line 809
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->midButtonUpdate(Z)V

    .line 811
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->showNotFound(Z)V

    .line 813
    :cond_0
    invoke-direct {p0, p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->pickSelectedCandidate(Landroid/view/inputmethod/InputConnection;)V

    .line 814
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->clearState()V

    .line 815
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateCandidates()V

    .line 816
    invoke-virtual {p0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->setCandidatesViewShown(Z)V

    .line 817
    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->pickSelectedCandidate(Landroid/view/inputmethod/InputConnection;)V

    .line 413
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->clearState()V

    .line 423
    const/4 v0, 0x0

    iput v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mEditing:I

    .line 424
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->hideWindow()V

    .line 425
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->hideStatusIcon()V

    .line 426
    return-void
.end method

.method private handleBackspace()V
    .locals 7

    .prologue
    const/16 v6, 0x31

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1045
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1046
    .local v0, "length":I
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1047
    .local v1, "length2":I
    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-ne v2, v5, :cond_1

    .line 1048
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->charReset()V

    .line 1049
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    if-eqz v2, :cond_0

    .line 1050
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v2, v4}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->midButtonUpdate(Z)V

    .line 1052
    :cond_0
    invoke-virtual {p0, v4}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->setCandidatesViewShown(Z)V

    .line 1054
    :cond_1
    if-le v1, v5, :cond_5

    .line 1055
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_2

    .line 1057
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPreviousWord:Ljava/lang/String;

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPreviousWord:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPreviousWord:Ljava/lang/String;

    .line 1059
    :cond_2
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1060
    add-int/lit8 v2, v1, -0x1

    if-le v2, v5, :cond_4

    .line 1061
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_3

    .line 1062
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1064
    const-string v2, ""

    iput-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPreviousWord:Ljava/lang/String;

    .line 1070
    :cond_3
    :goto_0
    invoke-direct {p0, v5}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateCandidates(Z)V

    .line 1071
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v2, v3, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1085
    :goto_1
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1088
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1089
    return-void

    .line 1068
    :cond_4
    const-string v2, ""

    iput-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPreviousWord:Ljava/lang/String;

    goto :goto_0

    .line 1072
    :cond_5
    if-gtz v0, :cond_6

    if-lez v1, :cond_7

    .line 1073
    :cond_6
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1074
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1075
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v2, v4}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->midButtonUpdate(Z)V

    .line 1076
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v2, v4}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->showNotFound(Z)V

    .line 1077
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1078
    const-string v2, ""

    iput-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPreviousWord:Ljava/lang/String;

    .line 1079
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1080
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateCandidates()V

    goto :goto_1

    .line 1082
    :cond_7
    const-string v2, ""

    iput-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPreviousWord:Ljava/lang/String;

    .line 1083
    const/16 v2, 0x43

    invoke-direct {p0, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->keyDownUp(I)V

    goto :goto_1
.end method

.method private handleCharacter(I)V
    .locals 8
    .param p1, "keyCode"    # I

    .prologue
    const/16 v4, 0x12

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1114
    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    packed-switch v2, :pswitch_data_0

    .line 1200
    const-string v2, "handleCharacter"

    const-string v3, "Unknown input?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :goto_0
    return-void

    .line 1118
    :pswitch_0
    if-ne p1, v4, :cond_1

    .line 1119
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1120
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitTyped()V

    .line 1122
    :cond_0
    const-string v2, " "

    invoke-virtual {p0, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1125
    :cond_1
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    if-eqz v2, :cond_2

    .line 1126
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v2, v7}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->midButtonUpdate(Z)V

    .line 1128
    :cond_2
    add-int/lit8 p1, p1, -0x7

    .line 1129
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1130
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateCandidates()V

    .line 1131
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v2, v3, v7}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 1137
    :pswitch_1
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->t9releasehandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mt9release:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1138
    if-ne p1, v4, :cond_3

    .line 1139
    add-int/lit8 p1, p1, -0x1

    .line 1141
    :cond_3
    add-int/lit8 p1, p1, -0x7

    .line 1144
    const/4 v1, 0x0

    .line 1145
    .local v1, "newChar":Z
    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPrevious:I

    if-ne v2, p1, :cond_7

    .line 1146
    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCharIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCharIndex:I

    .line 1157
    :goto_1
    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCharIndex:I

    if-nez v2, :cond_4

    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    if-eqz v2, :cond_4

    .line 1158
    sget-object v2, Lorg/nyanya/android/traditionalt9/CharMap;->T9CAPSTART:[[I

    iget v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLang:I

    aget-object v2, v2, v3

    aget v2, v2, p1

    iput v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCharIndex:I

    .line 1163
    :cond_4
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1164
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1165
    sget-object v2, Lorg/nyanya/android/traditionalt9/CharMap;->T9TABLE:[[[C

    iget v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLang:I

    aget-object v2, v2, v3

    aget-object v0, v2, p1

    .line 1166
    .local v0, "ca":[C
    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCharIndex:I

    array-length v3, v0

    if-lt v2, v3, :cond_5

    .line 1167
    iput v6, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCharIndex:I

    .line 1170
    :cond_5
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCharIndex:I

    aget-char v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1171
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v2, v3, v7}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1174
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->t9releasehandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mt9release:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4b0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1175
    if-eqz v1, :cond_6

    .line 1177
    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    if-ne v2, v7, :cond_6

    .line 1178
    iput v6, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    .line 1181
    :cond_6
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateCandidates()V

    .line 1182
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto/16 :goto_0

    .line 1148
    .end local v0    # "ca":[C
    :cond_7
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 1150
    const/4 v1, 0x1

    .line 1151
    iput v6, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCharIndex:I

    .line 1152
    iput p1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPrevious:I

    goto :goto_1

    .line 1186
    .end local v1    # "newChar":Z
    :pswitch_2
    packed-switch p1, :pswitch_data_1

    .line 1195
    add-int/lit8 v2, p1, -0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->onText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1189
    :pswitch_3
    const-string v2, "#"

    invoke-virtual {p0, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->onText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1192
    :pswitch_4
    const-string v2, "*"

    invoke-virtual {p0, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->onText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1186
    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private handleClose()V
    .locals 1

    .prologue
    .line 1290
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 1291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->requestHideSelf(I)V

    .line 1292
    return-void
.end method

.method private handleDPAD(ILandroid/view/KeyEvent;Z)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "keyDown"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1211
    if-eqz p3, :cond_2

    .line 1214
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1216
    iput-object p2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mDPADkeyEvent:Landroid/view/KeyEvent;

    move v0, v1

    .line 1266
    :goto_0
    return v0

    .line 1219
    :cond_0
    iget-boolean v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mIgnoreDPADKeyUp:Z

    if-eqz v0, :cond_1

    .line 1221
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1224
    :cond_1
    iput-boolean v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mIgnoreDPADKeyUp:Z

    .line 1225
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mDPADkeyEvent:Landroid/view/KeyEvent;

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1226
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1232
    :cond_2
    iget-boolean v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mIgnoreDPADKeyUp:Z

    if-eqz v0, :cond_3

    .line 1233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mIgnoreDPADKeyUp:Z

    .line 1234
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1236
    :cond_3
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1237
    packed-switch p1, :pswitch_data_0

    .line 1258
    :cond_4
    packed-switch p1, :pswitch_data_1

    .line 1265
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mDPADkeyEvent:Landroid/view/KeyEvent;

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1266
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1239
    :pswitch_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCandidateView:Lorg/nyanya/android/traditionalt9/CandidateView;

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/CandidateView;->scrollSuggestion(I)V

    .line 1240
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCandidateView:Lorg/nyanya/android/traditionalt9/CandidateView;

    iget v3, v3, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move v0, v1

    .line 1241
    goto :goto_0

    .line 1243
    :pswitch_1
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCandidateView:Lorg/nyanya/android/traditionalt9/CandidateView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lorg/nyanya/android/traditionalt9/CandidateView;->scrollSuggestion(I)V

    .line 1244
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCandidateView:Lorg/nyanya/android/traditionalt9/CandidateView;

    iget v3, v3, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move v0, v1

    .line 1245
    goto :goto_0

    .line 1248
    :pswitch_2
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-nez v0, :cond_6

    .line 1249
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitTyped()V

    :cond_5
    :goto_1
    move v0, v1

    .line 1255
    goto/16 :goto_0

    .line 1250
    :cond_6
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-ne v0, v1, :cond_5

    .line 1251
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitReset()V

    goto :goto_1

    .line 1260
    :pswitch_3
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->handleMidButton()V

    move v0, v1

    .line 1261
    goto/16 :goto_0

    .line 1237
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1258
    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_3
    .end packed-switch
.end method

.method private handleShift()V
    .locals 3

    .prologue
    .line 1093
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    sget-object v1, Lorg/nyanya/android/traditionalt9/TraditionalT9;->CAPS_CYCLE:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1094
    const/4 v0, 0x0

    iput v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    .line 1099
    :goto_0
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1100
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateCandidates()V

    .line 1101
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1103
    :cond_0
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateKeyMode()V

    .line 1104
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotification:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 1105
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotify(Ljava/lang/String;)V

    .line 1106
    :cond_1
    return-void

    .line 1096
    :cond_2
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    goto :goto_0
.end method

.method private keyDownUp(I)V
    .locals 5
    .param p1, "keyEventCode"    # I

    .prologue
    const/4 v4, 0x2

    .line 852
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 853
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-static {v2, v4}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 855
    .local v1, "kv":Landroid/view/KeyEvent;
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 856
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-static {v2, v4}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 858
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 859
    return-void
.end method

.method private modeNotify(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1308
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotification:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotification:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1310
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotification:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1312
    return-void
.end method

.method private nextLang()V
    .locals 2

    .prologue
    .line 1315
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangIndex:I

    .line 1316
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangIndex:I

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangsAvailable:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1317
    const/4 v0, 0x0

    iput v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangIndex:I

    .line 1319
    :cond_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangsAvailable:[I

    iget v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangIndex:I

    aget v0, v0, v1

    iput v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLang:I

    .line 1320
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateKeyMode()V

    .line 1321
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotification:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 1322
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLang:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotify(Ljava/lang/String;)V

    .line 1324
    :cond_1
    return-void
.end method

.method private pickSelectedCandidate(Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 1382
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->pickSuggestionManually(ILandroid/view/inputmethod/InputConnection;)V

    .line 1383
    return-void
.end method

.method private pickSuggestionManually(ILandroid/view/inputmethod/InputConnection;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v2, 0x1

    .line 1387
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1391
    :cond_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1392
    if-gez p1, :cond_2

    .line 1396
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCandidateView:Lorg/nyanya/android/traditionalt9/CandidateView;

    iget v1, v1, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p2, v0, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1397
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-nez v0, :cond_1

    .line 1399
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->db:Lorg/nyanya/android/traditionalt9/T9DB;

    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionInts:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCandidateView:Lorg/nyanya/android/traditionalt9/CandidateView;

    iget v2, v2, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/nyanya/android/traditionalt9/T9DB;->incrementWord(I)V

    .line 1410
    :cond_1
    :goto_0
    return-void

    .line 1403
    :cond_2
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p2, v0, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1404
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-nez v0, :cond_1

    .line 1405
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->db:Lorg/nyanya/android/traditionalt9/T9DB;

    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionInts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/nyanya/android/traditionalt9/T9DB;->incrementWord(I)V

    goto :goto_0
.end method

.method private resetKeyMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1327
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->charReset()V

    .line 1328
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1329
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitTyped()V

    .line 1331
    :cond_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1332
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1333
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1334
    return-void
.end method

.method private sanitizeLang(I)I
    .locals 5
    .param p1, "lang"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 205
    iput v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangIndex:I

    .line 206
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangsAvailable:[I

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    if-ne p1, v4, :cond_1

    .line 207
    :cond_0
    const-string v2, "T9.sanitizeLang"

    const-string v3, "This shouldn\'t happen."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 219
    .end local p1    # "lang":I
    :goto_0
    return p1

    .line 210
    .restart local p1    # "lang":I
    :cond_1
    sget v2, Lorg/nyanya/android/traditionalt9/LangHelper;->NLANGS:I

    if-lt p1, v2, :cond_2

    .line 211
    const-string v2, "T9.sanitizeLang"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous lang not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " langs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/nyanya/android/traditionalt9/LangHelper;->LANGS:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangsAvailable:[I

    aget p1, v2, v1

    goto :goto_0

    .line 214
    :cond_2
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangsAvailable:[I

    invoke-static {v1, p1}, Lorg/nyanya/android/traditionalt9/LangHelper;->findIndex([II)I

    move-result v0

    .line 215
    .local v0, "index":I
    if-ne v0, v4, :cond_3

    .line 216
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangsAvailable:[I

    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangIndex:I

    aget p1, v1, v2

    goto :goto_0

    .line 218
    :cond_3
    iput v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangIndex:I

    goto :goto_0
.end method

.method private setSuggestions(Ljava/util/List;I)V
    .locals 1
    .param p2, "initialSel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1036
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1037
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->setCandidatesViewShown(Z)V

    .line 1039
    :cond_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCandidateView:Lorg/nyanya/android/traditionalt9/CandidateView;

    if-eqz v0, :cond_1

    .line 1040
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCandidateView:Lorg/nyanya/android/traditionalt9/CandidateView;

    invoke-virtual {v0, p1, p2}, Lorg/nyanya/android/traditionalt9/CandidateView;->setSuggestions(Ljava/util/List;I)V

    .line 1042
    :cond_1
    return-void
.end method

.method private updateCandidates()V
    .locals 1

    .prologue
    .line 957
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateCandidates(Z)V

    .line 958
    return-void
.end method

.method private updateCandidates(Z)V
    .locals 15
    .param p1, "backspace"    # Z

    .prologue
    .line 960
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-nez v0, :cond_c

    .line 961
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 962
    .local v11, "len":I
    if-lez v11, :cond_b

    .line 963
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v11, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_6

    .line 964
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v14, 0x1

    .line 965
    .local v14, "suggestions":Z
    :goto_0
    const-string v13, ""

    .line 966
    .local v13, "prefix":Ljava/lang/String;
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPreviousWord:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 967
    if-eqz v14, :cond_0

    if-nez p1, :cond_0

    .line 968
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCandidateView:Lorg/nyanya/android/traditionalt9/CandidateView;

    iget v1, v1, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "prefix":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    iput-object v13, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPreviousWord:Ljava/lang/String;

    .line 981
    .restart local v13    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionInts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 982
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 983
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionSym:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->clear()V

    .line 984
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->db:Lorg/nyanya/android/traditionalt9/T9DB;

    const-string v1, "1"

    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionSym:Ljava/util/AbstractList;

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionInts:Ljava/util/ArrayList;

    iget v4, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    iget v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLang:I

    invoke-virtual/range {v0 .. v5}, Lorg/nyanya/android/traditionalt9/T9DB;->updateWords(Ljava/lang/String;Ljava/util/AbstractList;Ljava/util/List;II)V

    .line 985
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionSym:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 986
    .local v6, "a":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 987
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 964
    .end local v6    # "a":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v14    # "suggestions":Z
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 971
    .restart local v13    # "prefix":Ljava/lang/String;
    .restart local v14    # "suggestions":Z
    :cond_2
    if-eqz p1, :cond_3

    .line 972
    iget-object v13, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPreviousWord:Ljava/lang/String;

    goto :goto_1

    .line 974
    :cond_3
    if-eqz v14, :cond_4

    .line 975
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCandidateView:Lorg/nyanya/android/traditionalt9/CandidateView;

    iget v1, v1, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "prefix":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    iput-object v13, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPreviousWord:Ljava/lang/String;

    .restart local v13    # "prefix":Ljava/lang/String;
    goto :goto_1

    .line 977
    :cond_4
    iget-object v13, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPreviousWord:Ljava/lang/String;

    goto :goto_1

    .line 989
    .restart local v6    # "a":Ljava/lang/String;
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 991
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 995
    .end local v6    # "a":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v14    # "suggestions":Z
    :cond_6
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->db:Lorg/nyanya/android/traditionalt9/T9DB;

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionInts:Ljava/util/ArrayList;

    iget v4, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    iget v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLang:I

    invoke-virtual/range {v0 .. v5}, Lorg/nyanya/android/traditionalt9/T9DB;->updateWords(Ljava/lang/String;Ljava/util/AbstractList;Ljava/util/List;II)V

    .line 998
    :cond_7
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 999
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mWordFound:Z

    .line 1000
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1001
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    if-eqz v0, :cond_8

    .line 1003
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->showNotFound(Z)V

    .line 1013
    :cond_8
    :goto_3
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->setSuggestions(Ljava/util/List;I)V

    .line 1033
    .end local v11    # "len":I
    :cond_9
    :goto_4
    return-void

    .line 1006
    .restart local v11    # "len":I
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mWordFound:Z

    .line 1007
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v11, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1008
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->setCandidatesViewShown(Z)V

    .line 1009
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    if-eqz v0, :cond_8

    .line 1010
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->showNotFound(Z)V

    goto :goto_3

    .line 1015
    :cond_b
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->setSuggestions(Ljava/util/List;I)V

    .line 1016
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->setCandidatesViewShown(Z)V

    .line 1017
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    if-eqz v0, :cond_9

    .line 1018
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->showNotFound(Z)V

    goto :goto_4

    .line 1021
    .end local v11    # "len":I
    :cond_c
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1022
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 1023
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1024
    sget-object v0, Lorg/nyanya/android/traditionalt9/CharMap;->T9TABLE:[[[C

    iget v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLang:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPrevious:I

    aget-object v9, v0, v1

    .line 1025
    .local v9, "ca":[C
    move-object v7, v9

    .local v7, "arr$":[C
    array-length v12, v7

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_5
    if-ge v10, v12, :cond_d

    aget-char v8, v7, v10

    .line 1026
    .local v8, "c":C
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1028
    .end local v8    # "c":C
    :cond_d
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    iget v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCharIndex:I

    invoke-direct {p0, v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->setSuggestions(Ljava/util/List;I)V

    goto :goto_4

    .line 1030
    .end local v7    # "arr$":[C
    .end local v9    # "ca":[C
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    :cond_e
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->setSuggestions(Ljava/util/List;I)V

    goto :goto_4
.end method

.method private updateKeyMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1341
    const/4 v0, 0x0

    .line 1343
    .local v0, "icon":I
    iget v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    packed-switch v1, :pswitch_data_0

    .line 1375
    const-string v1, "updateKeyMode"

    const-string v2, "How."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :goto_0
    invoke-virtual {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->showStatusIcon(I)V

    .line 1379
    :goto_1
    return-void

    .line 1345
    :pswitch_0
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v1, v3}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->showHold(Z)V

    .line 1346
    sget-object v1, Lorg/nyanya/android/traditionalt9/LangHelper;->ICONMAP:[[[I

    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLang:I

    aget-object v1, v1, v2

    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    aget-object v1, v1, v2

    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    aget v0, v1, v2

    .line 1347
    goto :goto_0

    .line 1349
    :pswitch_1
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->db:Lorg/nyanya/android/traditionalt9/T9DB;

    iget-boolean v1, v1, Lorg/nyanya/android/traditionalt9/T9DB;->ready:Z

    if-nez v1, :cond_1

    .line 1350
    iget-boolean v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mGaveUpdateWarn:Z

    if-nez v1, :cond_0

    .line 1351
    const v1, 0x7f080040

    invoke-virtual {p0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1352
    iput-boolean v4, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mGaveUpdateWarn:Z

    .line 1354
    :cond_0
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->nextKeyMode()V

    goto :goto_1

    .line 1357
    :cond_1
    iget v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1358
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->nextKeyMode()V

    goto :goto_1

    .line 1361
    :cond_2
    iget-boolean v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mAddingWord:Z

    if-eqz v1, :cond_3

    .line 1362
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v1, v3}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->showHold(Z)V

    .line 1368
    :goto_2
    sget-object v1, Lorg/nyanya/android/traditionalt9/LangHelper;->ICONMAP:[[[I

    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLang:I

    aget-object v1, v1, v2

    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    aget-object v1, v1, v2

    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    aget v0, v1, v2

    .line 1369
    goto :goto_0

    .line 1364
    :cond_3
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v1, v4}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->showHold(Z)V

    goto :goto_2

    .line 1371
    :pswitch_2
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v1, v3}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->showHold(Z)V

    .line 1372
    const v0, 0x7f02000c

    .line 1373
    goto :goto_0

    .line 1343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V
    .locals 5
    .param p1, "attr"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 825
    if-eqz p1, :cond_1

    iget v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    if-eq v1, v4, :cond_1

    .line 826
    const/4 v0, 0x0

    .line 827
    .local v0, "caps":I
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v1, :cond_0

    .line 828
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    .line 832
    :cond_0
    and-int/lit16 v1, v0, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_2

    .line 833
    iput v4, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    .line 841
    :goto_0
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateKeyMode()V

    .line 844
    .end local v0    # "caps":I
    :cond_1
    return-void

    .line 834
    .restart local v0    # "caps":I
    :cond_2
    and-int/lit16 v1, v0, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_3

    .line 835
    iput v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    goto :goto_0

    .line 836
    :cond_3
    and-int/lit16 v1, v0, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_4

    .line 837
    iput v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    goto :goto_0

    .line 839
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    goto :goto_0
.end method


# virtual methods
.method protected handleMidButton()V
    .locals 1

    .prologue
    .line 930
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 931
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->showWindow(Z)V

    .line 950
    :goto_0
    return-void

    .line 934
    :cond_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 935
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 937
    :pswitch_0
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitTyped()V

    goto :goto_0

    .line 940
    :pswitch_1
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitTyped()V

    .line 941
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->charReset()V

    goto :goto_0

    .line 948
    :cond_1
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->hideWindow()V

    goto :goto_0

    .line 935
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected launchOptions()V
    .locals 4

    .prologue
    .line 592
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 593
    .local v0, "awintent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 594
    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 595
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->setPressed(IZ)V

    .line 598
    :cond_0
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->hideWindow()V

    .line 599
    invoke-virtual {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->startActivity(Landroid/content/Intent;)V

    .line 600
    return-void
.end method

.method protected nextKeyMode()V
    .locals 2

    .prologue
    .line 1295
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    sget-object v1, Lorg/nyanya/android/traditionalt9/TraditionalT9;->MODE_CYCLE:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1296
    const/4 v0, 0x0

    iput v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    .line 1301
    :goto_0
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateKeyMode()V

    .line 1302
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->resetKeyMode()V

    .line 1303
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotification:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1304
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotify(Ljava/lang/String;)V

    .line 1305
    :cond_0
    return-void

    .line 1299
    :cond_1
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mPrevious:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCharIndex:I

    .line 105
    invoke-static {p0}, Lorg/nyanya/android/traditionalt9/T9DB;->getInstance(Landroid/content/Context;)Lorg/nyanya/android/traditionalt9/T9DB;

    move-result-object v0

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->db:Lorg/nyanya/android/traditionalt9/T9DB;

    .line 107
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->pref:Landroid/content/SharedPreferences;

    .line 108
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->pref:Landroid/content/SharedPreferences;

    const-string v1, "pref_lang_support"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/nyanya/android/traditionalt9/LangHelper;->buildLangs(Ljava/lang/CharSequence;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangsAvailable:[I

    .line 110
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;-><init>(Landroid/view/View;Lorg/nyanya/android/traditionalt9/TraditionalT9;)V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    .line 114
    :cond_0
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lorg/nyanya/android/traditionalt9/CandidateView;

    invoke-direct {v0, p0}, Lorg/nyanya/android/traditionalt9/CandidateView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCandidateView:Lorg/nyanya/android/traditionalt9/CandidateView;

    .line 156
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCandidateView:Lorg/nyanya/android/traditionalt9/CandidateView;

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 4

    .prologue
    .line 138
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateKeyMode()V

    .line 139
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v1, v0}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->changeView(Landroid/view/View;)V

    .line 141
    iget v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->showHold(Z)V

    .line 146
    :goto_0
    return-object v0

    .line 144
    :cond_0
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->showHold(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->db:Lorg/nyanya/android/traditionalt9/T9DB;

    invoke-virtual {v0}, Lorg/nyanya/android/traditionalt9/T9DB;->close()V

    .line 431
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 432
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 473
    return-void
.end method

.method public onEvaluateInputViewShown()Z
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mEditing:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFinishInput()V
    .locals 3

    .prologue
    .line 394
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 396
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 397
    .local v0, "prefedit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_lang"

    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLang:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 398
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 399
    iget v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mEditing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 400
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitTyped()V

    .line 401
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->finish()V

    .line 403
    :cond_0
    return-void
.end method

.method public onKey(I[I)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 868
    sparse-switch p1, :sswitch_data_0

    .line 902
    const/4 v0, 0x7

    if-lt p1, v0, :cond_2

    const/16 v0, 0x10

    if-gt p1, v0, :cond_2

    .line 903
    invoke-direct {p0, p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->handleCharacter(I)V

    .line 909
    :goto_0
    :sswitch_0
    return-void

    .line 870
    :sswitch_1
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->handleBackspace()V

    goto :goto_0

    .line 874
    :sswitch_2
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 875
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->handleCharacter(I)V

    goto :goto_0

    .line 877
    :cond_0
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->handleShift()V

    goto :goto_0

    .line 881
    :sswitch_3
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->handleClose()V

    goto :goto_0

    .line 885
    :sswitch_4
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->handleCharacter(I)V

    goto :goto_0

    .line 888
    :sswitch_5
    iget-boolean v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mWordFound:Z

    if-eqz v0, :cond_1

    .line 889
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->showSymbolPage()V

    goto :goto_0

    .line 891
    :cond_1
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->showAddWord()V

    goto :goto_0

    .line 895
    :sswitch_6
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->nextKeyMode()V

    goto :goto_0

    .line 905
    :cond_2
    const-string v0, "onKey"

    const-string v1, "This shouldn\'t happen, unknown key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 868
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x4 -> :sswitch_3
        0x11 -> :sswitch_2
        0x12 -> :sswitch_4
        0x43 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 484
    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mEditing:I

    if-nez v2, :cond_1

    .line 588
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 488
    :cond_1
    iput-boolean v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mFirstPress:Z

    .line 492
    packed-switch p1, :pswitch_data_0

    .line 507
    :goto_1
    :pswitch_0
    sparse-switch p1, :sswitch_data_0

    .line 540
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 541
    goto :goto_0

    .line 494
    :pswitch_1
    const/16 p1, 0x12

    .line 495
    goto :goto_1

    .line 497
    :pswitch_2
    const/16 p1, 0x11

    .line 498
    goto :goto_1

    .line 500
    :pswitch_3
    const/4 p1, 0x2

    .line 501
    goto :goto_1

    .line 503
    :pswitch_4
    const/4 p1, 0x1

    goto :goto_1

    .line 509
    :sswitch_1
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    if-eqz v2, :cond_3

    .line 510
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v2, p1, v1}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->setPressed(IZ)V

    .line 516
    :cond_3
    :sswitch_2
    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mEditing:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 519
    invoke-direct {p0, p1, p2, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->handleDPAD(ILandroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_0

    .line 523
    :sswitch_3
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->isInputViewShown()Z

    move-result v2

    if-nez v2, :cond_2

    .line 524
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 533
    :sswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->onKey(I[I)V

    move v0, v1

    .line 534
    goto :goto_0

    .line 543
    :cond_4
    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-ne v2, v1, :cond_5

    .line 544
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->t9releasehandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mt9release:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 546
    :cond_5
    sparse-switch p1, :sswitch_data_1

    .line 586
    const-string v0, "onKeyDown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitReset()V

    .line 588
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 553
    :sswitch_5
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->isInputViewShown()Z

    move-result v0

    goto/16 :goto_0

    .line 562
    :sswitch_6
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    if-eqz v0, :cond_6

    .line 563
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v0, p1, v1}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->setPressed(IZ)V

    .line 579
    :cond_6
    :sswitch_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v0, v1

    .line 580
    goto/16 :goto_0

    .line 492
    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 507
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_1
        0x43 -> :sswitch_4
    .end sparse-switch

    .line 546
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x4 -> :sswitch_5
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0xf -> :sswitch_7
        0x10 -> :sswitch_7
        0x11 -> :sswitch_7
        0x12 -> :sswitch_7
        0x42 -> :sswitch_0
        0x50 -> :sswitch_7
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 605
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v1

    .line 609
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 626
    :goto_1
    :pswitch_0
    sparse-switch p1, :sswitch_data_0

    .line 664
    :cond_2
    :goto_2
    if-lt p1, v4, :cond_0

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    .line 665
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-nez v0, :cond_7

    .line 666
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitTyped()V

    .line 667
    add-int/lit8 v0, p1, -0x7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 611
    :pswitch_1
    const/16 p1, 0x12

    .line 612
    goto :goto_1

    .line 614
    :pswitch_2
    const/16 p1, 0x11

    .line 615
    goto :goto_1

    .line 617
    :pswitch_3
    const/4 p1, 0x2

    .line 618
    goto :goto_1

    .line 620
    :pswitch_4
    const/4 p1, 0x1

    goto :goto_1

    .line 628
    :sswitch_0
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitReset()V

    .line 630
    invoke-virtual {p0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->sendDefaultEditorAction(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 635
    :sswitch_1
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-eq v0, v3, :cond_2

    .line 636
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangsAvailable:[I

    array-length v0, v0

    if-le v0, v1, :cond_3

    .line 637
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->nextLang()V

    goto :goto_0

    .line 639
    :cond_3
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->showSmileyPage()V

    goto :goto_0

    .line 645
    :sswitch_2
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    if-eqz v0, :cond_4

    .line 646
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v0, p1, v2}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->setPressed(IZ)V

    .line 648
    :cond_4
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-nez v0, :cond_2

    .line 649
    iget-boolean v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mWordFound:Z

    if-eqz v0, :cond_5

    .line 650
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->showAddWord()V

    goto :goto_2

    .line 652
    :cond_5
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->showSymbolPage()V

    goto :goto_2

    .line 657
    :sswitch_3
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    if-eqz v0, :cond_6

    .line 658
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v0, p1, v2}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->setPressed(IZ)V

    .line 660
    :cond_6
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->launchOptions()V

    goto :goto_0

    .line 668
    :cond_7
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-ne v0, v1, :cond_8

    .line 669
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitReset()V

    .line 670
    add-int/lit8 v0, p1, -0x7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 671
    :cond_8
    iget v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-ne v0, v3, :cond_0

    .line 672
    if-ne p1, v4, :cond_0

    .line 673
    const-string v0, "+"

    invoke-virtual {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->onText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 609
    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 626
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 689
    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mEditing:I

    if-nez v2, :cond_1

    .line 798
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 697
    :cond_1
    iget-boolean v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mFirstPress:Z

    if-eqz v2, :cond_2

    .line 699
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 703
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 718
    :goto_1
    :pswitch_0
    sparse-switch p1, :sswitch_data_0

    .line 740
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 741
    goto :goto_0

    .line 705
    :pswitch_1
    const/16 p1, 0x12

    .line 706
    goto :goto_1

    .line 708
    :pswitch_2
    const/16 p1, 0x11

    .line 709
    goto :goto_1

    .line 711
    :pswitch_3
    const/4 p1, 0x2

    .line 712
    goto :goto_1

    .line 714
    :pswitch_4
    const/4 p1, 0x1

    goto :goto_1

    .line 720
    :sswitch_1
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    if-eqz v1, :cond_4

    .line 721
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v1, p1, v0}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->setPressed(IZ)V

    .line 727
    :cond_4
    :sswitch_2
    iget v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mEditing:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 730
    invoke-direct {p0, p1, p2, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->handleDPAD(ILandroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_0

    .line 734
    :sswitch_3
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->isInputViewShown()Z

    move-result v2

    if-nez v2, :cond_3

    .line 735
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 744
    :cond_5
    sparse-switch p1, :sswitch_data_1

    .line 795
    const-string v0, "onKeyUp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitReset()V

    .line 798
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 746
    :sswitch_4
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 747
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->hideWindow()V

    move v0, v1

    .line 748
    goto/16 :goto_0

    :sswitch_5
    move v0, v1

    .line 752
    goto/16 :goto_0

    .line 767
    :sswitch_6
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    if-eqz v2, :cond_6

    .line 768
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v2, p1, v0}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->setPressed(IZ)V

    .line 788
    :cond_6
    :sswitch_7
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_7

    .line 789
    invoke-virtual {p0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->showWindow(Z)V

    .line 791
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->onKey(I[I)V

    move v0, v1

    .line 792
    goto/16 :goto_0

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 718
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_1
    .end sparse-switch

    .line 744
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x4 -> :sswitch_4
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0xf -> :sswitch_7
        0x10 -> :sswitch_7
        0x11 -> :sswitch_7
        0x12 -> :sswitch_7
        0x42 -> :sswitch_0
        0x43 -> :sswitch_5
        0x50 -> :sswitch_7
    .end sparse-switch
.end method

.method public onPress(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .prologue
    .line 1438
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .prologue
    .line 1442
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 13
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/16 v8, 0xb0

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 231
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 236
    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v5, :cond_0

    .line 239
    iput v9, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mEditing:I

    .line 240
    invoke-virtual {p0, v9}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->requestHideSelf(I)V

    .line 241
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->hideStatusIcon()V

    .line 386
    :goto_0
    return-void

    .line 248
    :cond_0
    iput-boolean v10, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mFirstPress:Z

    .line 249
    iput v10, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mEditing:I

    .line 253
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->clearState()V

    .line 255
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->pref:Landroid/content/SharedPreferences;

    const-string v6, "pref_lang_support"

    invoke-interface {v5, v6, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/nyanya/android/traditionalt9/LangHelper;->buildLangs(Ljava/lang/CharSequence;)[I

    move-result-object v5

    iput-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLangsAvailable:[I

    .line 256
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->pref:Landroid/content/SharedPreferences;

    const-string v6, "last_lang"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v5}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->sanitizeLang(I)I

    move-result v5

    iput v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLang:I

    .line 258
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateCandidates()V

    .line 262
    iput v10, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    .line 264
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->pref:Landroid/content/SharedPreferences;

    const-string v6, "pref_mode_notify"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 265
    .local v0, "modenotify":Z
    if-nez v0, :cond_5

    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotification:Landroid/widget/Toast;

    if-eqz v5, :cond_5

    .line 266
    iput-object v12, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotification:Landroid/widget/Toast;

    .line 273
    :cond_1
    :goto_1
    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v5, v5, 0xf

    packed-switch v5, :pswitch_data_0

    .line 335
    const-string v5, "onStartInput"

    const-string v6, "defaulting"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0, p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 341
    :goto_2
    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v6, 0x10061

    if-ne v5, v6, :cond_2

    .line 342
    iput v10, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    .line 344
    :cond_2
    const/4 v2, 0x0

    .line 345
    .local v2, "prevword":Ljava/lang/String;
    iget-object v5, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v6, "org.nyanya.android.traditionalt9.addword=true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 347
    iput-boolean v10, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mAddingWord:Z

    .line 350
    iput v10, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    .line 375
    :cond_3
    :goto_3
    const/4 v5, -0x1

    invoke-direct {p0, v12, v5}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->setSuggestions(Ljava/util/List;I)V

    .line 376
    invoke-virtual {p0, v9}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->setCandidatesViewShown(Z)V

    .line 377
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionStrings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 378
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionInts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 379
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSuggestionSym:Ljava/util/AbstractList;

    invoke-virtual {v5}, Ljava/util/AbstractList;->clear()V

    .line 380
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    if-eqz v5, :cond_4

    .line 381
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->interfacehandler:Lorg/nyanya/android/traditionalt9/InterfaceHandler;

    invoke-virtual {v5, v9}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->midButtonUpdate(Z)V

    .line 384
    :cond_4
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateKeyMode()V

    goto/16 :goto_0

    .line 267
    .end local v2    # "prevword":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_1

    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotification:Landroid/widget/Toast;

    if-nez v5, :cond_1

    .line 268
    const-string v5, ""

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotification:Landroid/widget/Toast;

    goto :goto_1

    .line 278
    :pswitch_0
    iput v11, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    goto :goto_2

    .line 284
    :pswitch_1
    iput v11, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    goto :goto_2

    .line 292
    :pswitch_2
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->pref:Landroid/content/SharedPreferences;

    const-string v6, "pref_inputmode"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    .line 296
    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v4, v5, 0xff0

    .line 297
    .local v4, "variation":I
    const/16 v5, 0x80

    if-eq v4, v5, :cond_6

    const/16 v5, 0x90

    if-ne v4, v5, :cond_7

    .line 301
    :cond_6
    iput v10, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    .line 304
    :cond_7
    const/16 v5, 0x20

    if-eq v4, v5, :cond_8

    const/16 v5, 0x10

    if-eq v4, v5, :cond_8

    if-ne v4, v8, :cond_9

    .line 309
    :cond_8
    iput v10, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    .line 312
    :cond_9
    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v6, 0x10000

    and-int/2addr v5, v6

    if-eqz v5, :cond_a

    .line 319
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->pref:Landroid/content/SharedPreferences;

    const-string v6, "pref_inputmode"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    .line 324
    :cond_a
    if-ne v4, v8, :cond_b

    .line 325
    iput v11, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mEditing:I

    .line 331
    :cond_b
    invoke-direct {p0, p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto/16 :goto_2

    .line 352
    .end local v4    # "variation":I
    .restart local v2    # "prevword":Ljava/lang/String;
    :cond_c
    iput-boolean v9, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mAddingWord:Z

    .line 354
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->pref:Landroid/content/SharedPreferences;

    const-string v6, "last_word"

    invoke-interface {v5, v6, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    if-eqz v2, :cond_d

    .line 356
    invoke-virtual {p0, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->onText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 358
    .local v1, "prefedit":Landroid/content/SharedPreferences$Editor;
    const-string v5, "last_word"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 359
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 361
    .end local v1    # "prefedit":Landroid/content/SharedPreferences$Editor;
    :cond_d
    if-eqz v0, :cond_3

    .line 362
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 363
    .local v3, "r":Landroid/content/res/Resources;
    iget v5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-eq v5, v11, :cond_e

    .line 364
    const-string v5, "%s %s %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x7f050005

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLang:I

    aget-object v7, v7, v8

    aput-object v7, v6, v9

    const v7, 0x7f050001

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    aget-object v7, v7, v8

    aput-object v7, v6, v10

    const/high16 v7, 0x7f050000

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mCapsMode:I

    aget-object v7, v7, v8

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotify(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 367
    :cond_e
    const-string v5, "%s %s"

    new-array v6, v11, [Ljava/lang/Object;

    const v7, 0x7f050005

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLang:I

    aget-object v7, v7, v8

    aput-object v7, v6, v9

    const v7, 0x7f050001

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    aget-object v7, v7, v8

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->modeNotify(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 913
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 914
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 923
    :goto_0
    return-void

    .line 916
    :cond_0
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 917
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 918
    :cond_1
    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 920
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 921
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 922
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 3
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    const/4 v2, 0x0

    .line 447
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 452
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    :cond_0
    if-ne p3, p6, :cond_1

    if-eq p4, p6, :cond_2

    .line 454
    :cond_1
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 455
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposingI:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 456
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateCandidates()V

    .line 457
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 458
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 459
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 462
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    return-void
.end method

.method protected showAddWord()V
    .locals 4

    .prologue
    .line 185
    iget v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mKeyMode:I

    if-nez v2, :cond_0

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/nyanya/android/traditionalt9/AddWordAct;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v0, "awintent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    const/high16 v2, 0x40000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    const-string v2, "org.nyanya.android.traditionalt9.word"

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v2, "org.nyanya.android.traditionalt9.lang"

    iget v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mLang:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->clearState()V

    .line 192
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 193
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v2, ""

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 194
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 195
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->updateCandidates()V

    .line 197
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mWordFound:Z

    .line 198
    invoke-virtual {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->startActivity(Landroid/content/Intent;)V

    .line 200
    .end local v0    # "awintent":Landroid/content/Intent;
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method protected showSmileyPage()V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSmileyPopup:Lorg/nyanya/android/traditionalt9/AbsSymDialog;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lorg/nyanya/android/traditionalt9/SmileyDialog;

    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/nyanya/android/traditionalt9/SmileyDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSmileyPopup:Lorg/nyanya/android/traditionalt9/AbsSymDialog;

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSmileyPopup:Lorg/nyanya/android/traditionalt9/AbsSymDialog;

    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->doShow(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method protected showSymbolPage()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSymbolPopup:Lorg/nyanya/android/traditionalt9/AbsSymDialog;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lorg/nyanya/android/traditionalt9/SymbolDialog;

    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/nyanya/android/traditionalt9/SymbolDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSymbolPopup:Lorg/nyanya/android/traditionalt9/AbsSymDialog;

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mSymbolPopup:Lorg/nyanya/android/traditionalt9/AbsSymDialog;

    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->doShow(Landroid/view/View;)V

    .line 165
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 1429
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->handleClose()V

    .line 1430
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 1424
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->handleBackspace()V

    .line 1425
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 1420
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 1434
    return-void
.end method
