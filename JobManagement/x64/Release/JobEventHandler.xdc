<?xml version="1.0"?><doc>
<members>
<member name="T:JobManagement.JobEventArgs" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="27">
<summary>
The base class for all Job Object related event args
</summary>
</member>
<member name="M:JobManagement.JobEventArgs.#ctor(System.UInt32)" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="33">
<summary>
Initializes a new instance of JobEventArgs
</summary>
<param name="messageSpecificValue">A specific value related to the current event. 
Most of the time it is the related process id</param>
</member>
<member name="P:JobManagement.JobEventArgs.MessageSpecificValue" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="40">
<summary>
A specific value related to the current event. 
Most of the time it is the related process id
</summary>
<returns>A specific value related to the current event. 
Most of the time it is the related process id</returns>
</member>
<member name="T:JobManagement.jobEventHandler`1" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="52">
<summary>
Generic delegate for all Job Events
</summary>
</member>
<member name="T:JobManagement.JobProcessEventArgs" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="69">
<summary>
a base class for all Job Object event args that has a process argument
</summary>
</member>
<member name="P:JobManagement.JobProcessEventArgs.TheProcess" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="75">
<summary>
The event related process. 
</summary>
<remarks>
Since a race-condition may occur, this value may be null, if the related process has been exited.
It also may refer to a <see cref="T:System.Diagnostics.Process"/> that 
is no longer valid.
In rare cases (depend on the operating system) the event may be raised by a process that is already gone,
and a new process with the same process id is currently running which has nothing to do with the event.
In those rare cases the <see cref="P:JobManagement.JobProcessEventArgs.TheProcess"/> may hold the wrong instance.
</remarks>
<returns>The process that related to the current event</returns>
</member>
<member name="P:JobManagement.JobProcessEventArgs.TheProcessId" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="89">
<summary>
The event related process id.
</summary>
<remarks>
Since a race-condition may occur, this value may be no longer in use (the process has gone).
In rare cases (depend on the operating system) the event may be raised by a process that is already gone,
and a new process with the same process id is currently running which has nothing to do with the event. 
</remarks>
<returns>The event related process id.</returns>
</member>
<member name="P:JobManagement.JobProcessEventArgs.Win32Name" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="100">
<summary>
The best Win32 name that can be found. It may be the executable name, or the process id.
</summary>
</member>
<member name="P:JobManagement.JobProcessEventArgs.Win32Path" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="105">
<summary>
The full path of the process executable
</summary>
</member>
<member name="T:JobManagement.ExitReasonIds" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="118">
<summary>
Exit codes that indicate an abnormal exit of a process in a job
</summary>
</member>
<member name="T:JobManagement.AbnormalExitProcessEventArgs" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="153">
<summary>
This event argument is used to indicate that a process associated with the job abnormal terminated.
</summary>
</member>
<member name="P:JobManagement.AbnormalExitProcessEventArgs.ExitReasonId" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="159">
<summary>
One of the <see cref="T:JobManagement.ExitReasonIds"/> values that points to the exit reason.
</summary>
<returns>The exit reason id</returns>
</member>
<member name="P:JobManagement.AbnormalExitProcessEventArgs.ExitReasonMessage" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="165">
<summary>
One of the <see cref="T:JobManagement.ExitReasonIds"/> names that points to the exit reason
</summary>
<returns>The exit reason name</returns>
</member>
<member name="M:JobManagement.AbnormalExitProcessEventArgs.#ctor(System.UInt32)" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="171">
<summary>
Initializes a new instance of AbnormalExitProcessEventArgs
</summary>
<param name="messageSpecificValue">The process that has abnormal terminated</param>
</member>
<member name="T:JobManagement.ActiveProcessLimitEventArgs" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="201">
<summary>
Event argument for the event that indicates that the active process limit has been exceeded. 
</summary>
</member>
<member name="T:JobManagement.ActiveProcessZeroEventArgs" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="206">
<summary>
Event argument for the event that indicates that the active process count has been decremented to 0. For example, if the job currently has two active processes, the system sends this message after they both terminate. 
</summary>
</member>
<member name="T:JobManagement.EndOfJobTimeEventArgs" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="211">
<summary>
Event argument for the event that indicates that the JOB_OBJECT_POST_AT_END_OF_JOB option is in effect and the end-of-job time limit has been reached. Upon posting this message, the time limit is canceled and the job's processes can continue to run. 
</summary>
</member>
<member name="T:JobManagement.EndOfProcessTimeEventArgs" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="216">
<summary>
Event argument for the event that indicates that a process has exceeded a per-process time limit. The system sends this message after the process termination has been requested. 
</summary>
</member>
<member name="T:JobManagement.ExitProcessEventArgs" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="221">
<summary>
Event argument for the event that indicates that a process associated with the job has exited. 
</summary>
</member>
<member name="T:JobManagement.JobMemoryLimitEventArgs" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="226">
<summary>
Event argument for the event that indicates that a process associated with the job caused the job to exceed the job-wide memory limit (if one is in effect). 
</summary>
</member>
<member name="T:JobManagement.NewProcessEventArgs" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="231">
<summary>
Event argument for the event that indicates that a process has been added to the job. Processes added to a job at the time a completion port is associated are also reported. 
</summary>
</member>
<member name="T:JobManagement.ProcessMemoryLimitEventArgs" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="236">
<summary>
Event argument for the event that indicates that a process associated with the job has exceeded its memory limit (if one is in effect). 
</summary>
</member>
<member name="T:JobManagement.JobEvents" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="267">
<summary>
This class exposes the various Job Object events.
</summary>
<remarks> The C++/CLI implementation uses templates and macros. In C# the code is much cleaner, the event args is based on generic delegate.
The Job Object can raise events on many occasions such as: process related to the job exited or terminated,
a new process is born, a number of process limit has been reached, the number of processes in the job dropped to zero,
Job or process has reached its timeout limit or a memory limit has happened.
The first time a client is registered to an event, a new thread is created. 
All events will be invoked with this thread.
For those events that related to a process, the name and process id can be found in the event argument.
Be aware that in some cases, such as process creation or exit, this value may no longer be valid since a built-in race condition. 
</remarks>
<example>
C#: 
class Program
{
	static System.Threading.ManualResetEvent finishEvent = new System.Threading.ManualResetEvent(false);

	static void Main(string[] args)
	{
		try
	    {
	        using (JobObject jo = new JobObject("EndOfProcessTimeExample"))
	        {
	            jo.Events.OnEndOfProcessTime += new jobEventHandler&lt;EndOfProcessTimeEventArgs&gt;(Events_OnEndOfProcessTime);
	            jo.Limits.PerProcessUserTimeLimit = TimeSpan.FromMilliseconds(100);

	            System.Diagnostics.ProcessStartInfo si = new System.Diagnostics.ProcessStartInfo("cmd.exe");
	            si.RedirectStandardInput = true;
	            si.UseShellExecute = false;
	            System.Diagnostics.Process p = jo.CreateProcessMayBreakAway(si);
            
	            p.StandardInput.WriteLine("@for /L %n in (1,1,1000000) do @echo %n");

	            finishEvent.WaitOne();
	        }
	    }
	    catch (Exception e)
	    {
	        Console.WriteLine(e.Message);
	    }
	}

	static void Events_OnEndOfProcessTime(object sender, EndOfProcessTimeEventArgs args)
	{
	    Console.WriteLine("Process {0} has reached its time limit", args.Win32Name);
	    finishEvent.Set();
	}
}
</example>
</member>
<member name="M:JobManagement.JobEvents.#ctor(JobManagement.JobObject)" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="321">
<summary>
Initializes a new instance of JobEvents
</summary>
<param name="job">The source (<see cref="T:JobManagement.JobObject"/>) of the event</param>
</member>
<member name="E:JobManagement.JobEvents.OnAbnormalExitProcess" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="341">
<summary>
Indicates that a process associated with the job exited with an exit code that indicates an abnormal exit.
</summary>
</member>
<member name="E:JobManagement.JobEvents.OnActiveProcessLimit" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="346">
<summary>
Indicates that the active process limit has been exceeded. 
</summary>
</member>
<member name="E:JobManagement.JobEvents.OnActiveProcessZero" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="351">
<summary>
Indicates that the active process count has been decremented to 0. For example, if the job currently has two active processes, the system sends this message after they both terminate. 
</summary>
</member>
<member name="E:JobManagement.JobEvents.OnEndOfJobTime" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="356">
<summary>
Indicates that the JOB_OBJECT_POST_AT_END_OF_JOB option is in effect and the end-of-job time limit has been reached. Upon posting this message, the time limit is canceled and the job's processes can continue to run. 
</summary>
</member>
<member name="E:JobManagement.JobEvents.OnEndOfProcessTime" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="361">
<summary>
Indicates that a process has exceeded a per-process time limit. The system sends this message after the process termination has been requested. 
</summary>
</member>
<member name="E:JobManagement.JobEvents.OnExitProcess" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="366">
<summary>
Indicates that a process associated with the job has exited. 
</summary>
</member>
<member name="E:JobManagement.JobEvents.OnJobMemoryLimit" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="371">
<summary>
Indicates that a process associated with the job caused the job to exceed the job-wide memory limit (if one is in effect). 
</summary>
</member>
<member name="E:JobManagement.JobEvents.OnNewProcess" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="376">
<summary>
Indicates that a process has been added to the job. Processes added to a job at the time a completion port is associated are also reported. 
</summary>
</member>
<member name="E:JobManagement.JobEvents.OnProcessMemoryLimit" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobeventhandler.h" line="381">
<summary>
Indicates that a process associated with the job has exceeded its memory limit (if one is in effect). 
</summary>
</member>
<member name="T:JobManagement.JobException" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobexception.h" line="19">
<summary>
This exception class is used to inform the caller of most of the Job Object wrapper errors.
</summary>
<remarks> 
If the error occurred by Win32 the Win32 GetLastError() code can be found in <see cref="P:JobManagement.JobException.Win32LastError"/> 
and the text FormatMessage message can be found in <see cref="P:JobManagement.JobException.Win32ErrorMessage"/>
</remarks>
</member>
<member name="M:JobManagement.JobException.#ctor" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobexception.h" line="30">
<summary>
Initializes a new instance of JobException
</summary>
</member>
<member name="M:JobManagement.JobException.#ctor(System.Boolean)" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobexception.h" line="35">
<summary>
Initializes a new instance of JobException
</summary>
<param name="useCurrentWin32Error">true value will peek the current Win32 error.</param>
</member>
<member name="M:JobManagement.JobException.#ctor(System.Boolean,System.Exception)" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobexception.h" line="41">
<summary>
Initializes a new instance of JobException
</summary>
<param name="useCurrentWin32Error">true value will peek the current Win32 error.</param>
<param name="innerException">The exception that is the cause of the current exception, or a null reference
(Nothing in Visual Basic) if no inner exception is specified.
</param>
</member>
<member name="M:JobManagement.JobException.#ctor(System.UInt32)" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobexception.h" line="50">
<summary>
Initializes a new instance of JobException
</summary>
<param name="win32Error">The win32 error that is the cause of the current exception</param>
</member>
<member name="M:JobManagement.JobException.#ctor(System.UInt32,System.Exception)" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobexception.h" line="56">
<summary>
Initializes a new instance of JobException
</summary>
<param name="win32Error">The win32 error that is the cause of the current exception</param>
<param name="innerException">The exception that is the cause of the current exception, or a null reference
(Nothing in Visual Basic) if no inner exception is specified.
</param>
</member>
<member name="M:JobManagement.JobException.#ctor(System.String)" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobexception.h" line="65">
<summary>
Initializes a new instance of JobException
</summary>
<param name="message">The message that describes the error.</param>
</member>
<member name="M:JobManagement.JobException.#ctor(System.String,System.Exception)" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobexception.h" line="71">
<summary>
Initializes a new instance of JobException
</summary>
<param name="message">The message that describes the error.</param>
<param name="innerException">The exception that is the cause of the current exception, or a null reference
(Nothing in Visual Basic) if no inner exception is specified.
</param>
</member>
<member name="M:JobManagement.JobException.#ctor(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext)" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobexception.h" line="82">
<summary>
Initializes a new instance of JobException
</summary>
<param name="info">The <see cref="T:System.Runtime.Serialization.SerializationInfo"/> that holds the serialized
object data about the exception being thrown.</param>
<param name="context"> The <see cref="T:System.Runtime.Serialization.StreamingContext"/> that contains contextual
information about the source or destination.</param>
</member>
<member name="P:JobManagement.JobException.Win32LastError" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobexception.h" line="93">
<summary>
The win32 error that is the cause of the current exception
</summary>
<returns></returns>
</member>
<member name="P:JobManagement.JobException.Win32ErrorMessage" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobexception.h" line="98">
<summary>
The win32 error message describing the cause of the current exception.
</summary>
<returns>The win32 error message describing the cause of the current exception.</returns>
</member>
<member name="T:JobManagement.JobObject" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="36">
<summary>
This is the .Net wrapper class for the Win32 Job Object mechanism
</summary>
Usage Example:
<example>
 using (JobObject jo = new JobObject("JobMemoryLimitExample"))
 {
    jo.Limits.JobMemoryLimit = new IntPtr(30000000);
    jo.Events.OnJobMemoryLimit += new jobEventHandler&lt;JobMemoryLimitEventArgs&gt;(Events_OnJobMemoryLimit);

    while (!_isStop)
    {
       ProcessStartInfo psi = new ProcessStartInfo("calc.exe");
       Process proc = jo.CreateProcessMayBreakAway(psi);

       Thread.Sleep(100);
    }
 }
</example>
</member>
<member name="M:JobManagement.JobObject.#ctor" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="58">
<summary>
Create a Job Object wrapper with no Win32 object name
</summary>
</member>
<member name="M:JobManagement.JobObject.#ctor(System.String)" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="63">
<summary>
Create a Job Object wrapper with Win32 object name
</summary>
<param name="name">the name of the Job Object. This name can be use to share the same job object.</param>
</member>
<member name="M:JobManagement.JobObject.#ctor(System.IntPtr)" decl="true" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="69">
<summary>
Create a Job Object wrapper from WIn32 Job handle. 
Use this constructor for Interop scenarios.
The Job Object wrapper duplicates the handle, and closes it 
on its dispose method.
The method tries to find the original job object name.
</summary>
<param name="hJob">The Win32 job object handle</param>
</member>
<member name="M:JobManagement.JobObject.Dispose" decl="true" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="79">
<summary>
Dispose the job, this also closes the native job handle
</summary>
</member>
<member name="M:JobManagement.JobObject.CreateProcessMayBreakAway(System.Diagnostics.ProcessStartInfo)" decl="true" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="84">
<summary>
Create a process in a Job Object sandbox.
</summary>
<remarks> If the newly created process creates a child process before entering the job, 
the child process will not be part of the job.</remarks>
<param name="startupInfo">The process startup information</param>
<returns>The newly create Process object</returns>
</member>
<member name="M:JobManagement.JobObject.CreateProcessSecured(System.Diagnostics.ProcessStartInfo)" decl="true" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="94">
<summary>
Create a process in a Job Object sandbox; the method uses other process to create the child process.
</summary>
<remarks>Usually creating a process in a job object is a three steps process. 
First we create the new process in a suspend state (using the CREATE_SUSPENDED flag), 
then we assign the process to the Job, and just after that we allow the process to run using ResumeThread.
The problem is that .Net currently does not enable creating processes in a suspend state. 
The chosen solution is to use a child activation service process running in the job. 
Any time we need to create a process in the Job we ask this child process to run the desired process, 
hence implying an execution in a Job. 
</remarks>
<param name="startupInfo">The process startup information</param>
<returns>The return value is a remoting Process proxy. 
If you close the activation service process, you lose the returned process. 
Usually you need this object if you redirect standard input, output or error.</returns>
</member>
<member name="M:JobManagement.JobObject.CreateProcessMayBreakAway(System.String)" decl="true" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="111">
<summary>
Create a process in a Job Object sandbox.
</summary>
<remarks> If the newly created process creates a child process before entering the job, 
the child process will not be part of the job.</remarks>
<param name="fileName">The file name to run, Starting a process by specifying its file name is similar to typing 
the information in the Run dialog box of the Windows Start menu</param>
<returns>The newly create Process object</returns>
</member>
<member name="M:JobManagement.JobObject.CreateProcessSecured(System.String)" decl="true" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="122">
<summary>
Create a process in a Job Object sandbox; the method uses other process to create the child process.
</summary>
<remarks>Usually creating a process in a job object is a three steps process. 
First we create the new process in a suspend state (using the CREATE_SUSPENDED flag), 
then we assign the process to the Job, and just after that we allow the process to run using ResumeThread.
The problem is that .Net currently does not enable creating processes in a suspend state. 
The chosen solution is to use a child activation service process running in the job. 
Any time we need to create a process in the Job we ask this child process to run the desired process, 
hence implying an execution in a Job. 
</remarks>
<param name="fileName">The file name to run, Starting a process by specifying its file name is similar to typing 
the information in the Run dialog box of the Windows Start menu</param>
<returns>The return value is a remoting Process proxy. 
If you close the activation service process, you lose the returned process. 
Usually you need this object if you redirect standard input, output or error.</returns>
</member>
<member name="M:JobManagement.JobObject.ShutDownInJobProcessActivationService" decl="true" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="140">
<summary>
Shut down the process activation service. 
If you call again to any of the CreateProcessSecured methods you get a new process activation service. 
</summary>
<remarks>By calling this method, you invalidate any Process remoting proxy that has returned 
from CreateProcessSecured.</remarks> 
</member>
<member name="M:JobManagement.JobObject.TerminateAllProcesses(System.UInt32)" decl="true" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="148">
<summary>
Terminates all processes currently associated with the job.
</summary>
<remarks>
It is not possible for any of the processes associated with the job to postpone or handle the termination. 
It is as if TerminateProcess were called for each process associated with the job
</remarks>
<param name="exitCode">The exit code to be used by all processes and threads in the job object.</param>
<exception cref="T:JobManagement.JobException"/>
</member>
<member name="P:JobManagement.JobObject.Limits" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="160">
<summary>
Use Limits to access the Job Object limit facility.
</summary>
<remarks> You can limit processes in the Job in many areas, such as: 
time limit (CPU time and absolute time), Memory limits, force priority and scheduling class, set the process working set,
and force several security related limits. 
Security limits are deprecated on Windows Vista and Server 2008. 
We will try to find a solution on per process basis for those platforms</remarks>
</member>
<member name="P:JobManagement.JobObject.Events" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="173">
<summary>
This member exposes the various Job Object events.
</summary>
<remarks> The Job Object can raise events on many occasions such as: process related to the job exited or terminated,
a new process is born, a number of process limit has been reached, the number of processes in the job dropped to zero,
Job or process has reached its timeout limit or a memory limit has happened.
The first time a client is registered to an event, a new thread is created. 
All events will be invoked with this thread.
For those events that related to a process, the name and process id can be found in the event argument.
Be aware that in some cases, such as process creation or exit, this value may no longer be valid since a built-in race condition. 
</remarks>
<example>
C#: 

class Program
{
	static System.Threading.ManualResetEvent finishEvent = new System.Threading.ManualResetEvent(false);

	static void Main(string[] args)
	{
		try
	    {
	        using (JobObject jo = new JobObject("EndOfProcessTimeExample"))
	        {
	            jo.Events.OnEndOfProcessTime += new jobEventHandler&lt;EndOfProcessTimeEventArgs&gt;(Events_OnEndOfProcessTime);
	            jo.Limits.PerProcessUserTimeLimit = TimeSpan.FromMilliseconds(100);

	            System.Diagnostics.ProcessStartInfo si = new System.Diagnostics.ProcessStartInfo("cmd.exe");
	            si.RedirectStandardInput = true;
	            si.UseShellExecute = false;
	            System.Diagnostics.Process p = jo.CreateProcessMayBreakAway(si);
            
	            p.StandardInput.WriteLine("@for /L %n in (1,1,1000000) do @echo %n");

	            finishEvent.WaitOne();
	        }
	    }
	    catch (Exception e)
	    {
	        Console.WriteLine(e.Message);
	    }
	}

	static void Events_OnEndOfProcessTime(object sender, EndOfProcessTimeEventArgs args)
	{
	    Console.WriteLine("Process {0} has reached its time limit", args.Win32Name);
	    finishEvent.Set();
	}
}
</example>
</member>
<member name="P:JobManagement.JobObject.Handle" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="228">
<summary>
The handle of the native Win32 Job Object. Do not close this handle. The handle will be closed on dispose.
</summary>
</member>
<member name="P:JobManagement.JobObject.IsJobTimeout" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="236">
<summary>
True if the processes in the job reached the job timeout limit
</summary>
<remarks> 
This refers only to the CPU based time limit and not to the absolute timer. The value will be reset when a new timeout limit will be set.
</remarks>
</member>
<member name="M:JobManagement.JobObject.Join" decl="true" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="248">
<summary>
The thread will continue when the processes in the job reached the job timeout limit
</summary>
<remarks> 
This refers only to the CPU based time limit and not to the absolute timer. Thread will wait again when a new timeout limit will be set.
</remarks>
<exception cref="T:JobManagement.JobException"/>
</member>
<member name="M:JobManagement.JobObject.Join(System.TimeSpan)" decl="true" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="257">
<summary>
The thread will continue when the processes in the job reached the job timeout limit, or when the supplied timeout parameter is reached
</summary>
<remarks> 
This refers only to the CPU based time limit and not to the absolute timer. Thread will wait again when a new timeout limit will be set.
</remarks>
<param name="timeout">The time-out interval. The function returns if the interval elapses, 
even if the processes in the job have not reached the timeout limit.</param>
<returns>
true when the processes in the job have reached the timeout limit.
false when a timeout interval has passed.
</returns>
<exception cref="T:JobManagement.JobException"/>
</member>
<member name="M:JobManagement.JobObject.AssignProcessToJob(System.Diagnostics.Process)" decl="true" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="272">
<summary>
Assigns a process to an existing job object.
</summary>
<param name="process">
the process to associate with the job object. The process must not already be assigned to a job. 
</param>
<exception cref="T:JobManagement.JobException"/>
</member>
<member name="P:JobManagement.JobObject.TotalUserTime" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="281">
<summary>
The total amount of user-mode execution time for all active processes associated with the job, 
as well as all terminated processes no longer associated with the job
</summary>
</member>
<member name="P:JobManagement.JobObject.TotalKernelTime" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="290">
<summary>
The total amount of kernel-mode execution time for all active processes associated with the job, as well as all terminated processes no longer associated with the job, in 100-nanosecond ticks. 
</summary>
</member>
<member name="P:JobManagement.JobObject.ThisPeriodTotalUserTime" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="298">
<summary>
The total amount of user-mode execution time for all active processes associated with the job (as well as all terminated processes no longer associated with the job) since the last call that set a per-job user-mode time limit
</summary>
</member>
<member name="P:JobManagement.JobObject.ThisPeriodTotalKernelTime" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="306">
<summary>
The total amount of kernel-mode execution time for all active processes associated with the job (as well as all terminated processes no longer associated with the job) since the last call that set a per-job kernel-mode time limit
</summary>
<remarks>
This member is set to zero on creation of the job, and each time a per-job kernel-mode time limit is established.
</remarks>
</member>
<member name="P:JobManagement.JobObject.TotalPageFaultCount" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="317">
<summary>
The total number of page faults encountered by all active processes associated with the job, as well as all terminated processes no longer associated with the job. 
</summary>
</member>
<member name="P:JobManagement.JobObject.TotalProcesses" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="325">
<summary>
The total number of processes associated with the job during its lifetime, including those that have terminated. 
</summary>
<remarks>
when a process is associated with a job, but the association fails because of a limit violation, this value is incremented. 
</remarks>
</member>
<member name="P:JobManagement.JobObject.ActiveProcesses" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="336">
<summary>
The total number of processes currently associated with the job. 
</summary>
<remarks>
When a process is associated with a job, but the association fails because of a limit violation, this value is temporarily incremented. When the terminated process exits and all references to the process are released, this value is decremented. 
</remarks>
</member>
<member name="P:JobManagement.JobObject.TotalTerminatedProcesses" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="347">
<summary>
The total number of processes terminated because of a limit violation.
</summary>
</member>
<member name="P:JobManagement.JobObject.PeakProcessMemoryUsed" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="355">
<summary>
 A high water mark, the peak memory used by any process ever associated with the job. 
</summary>
</member>
<member name="P:JobManagement.JobObject.PeakJobMemoryUsed" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="363">
<summary>
The peak memory usage of all processes currently associated with the job.
</summary>
</member>
<member name="P:JobManagement.JobObject.IOCounters" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="371">
<summary>
Contains basic accounting and I/O accounting information for a job object.
</summary>
<remarks>
Includes information for all processes that have ever been associated with the job, 
in addition to the information for all processes currently associated with the job. 
</remarks>
</member>
<member name="M:JobManagement.JobObject.ConstructAssignedProcessList" decl="true" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="383">
<summary>
Return a list of processes in the job.
</summary>
<remarks>
This method returns only the processes that calling to <see cref="M:System.Diagnostics.Process.GetProcessById(System.Int32)"/> had not failed
</remarks>
<returns>List of processes in the job</returns>
</member>
<member name="M:JobManagement.JobObject.GetAssignedProcessList" decl="true" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="392">
<summary>
return a list of process ids in the job
</summary>
<remarks>
This information may not be valid, since a race-condition may occur. A returned process id may no longer be active.
</remarks>
<returns>List of process ids in the job</returns>
</member>
<member name="P:JobManagement.JobObject.IsCurrentProcessInJob" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="401">
<summary>
Determines whether the current process is running in the job.
</summary>
</member>
<member name="M:JobManagement.JobObject.IsProcessInJob(System.Diagnostics.Process)" decl="true" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="409">
<summary>
Determines whether the calling process is running in the job.
</summary>
</member>
<member name="P:JobManagement.JobObject.IsOpenedAsWin32SharedObject" decl="false" source="c:\users\alon\source\repos\jobobjectwrapper\jobmanagement\jobmanagement.h" line="415">
<summary>
Determines whether the Job was opened and not created
</summary>
<remarks> 
There are two cases that this value is true. 
	a)	The object was created with the constructor that gets a Win32 handle to an existing Job Object.
	b)	The object was created with a constructor that takes a Job Object name, and the name was already in use.
</remarks>
</member>
</members>
</doc>